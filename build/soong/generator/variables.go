package generator

import (
	"fmt"

	"android/soong/android"
)

func dotExpandVariables(ctx android.ModuleContext, in string) string {
	dotVars := ctx.Config().VendorConfig("dotVarsPlugin")

	out, err := android.Expand(in, func(name string) (string, error) {
		if dotVars.IsSet(name) {
			return dotVars.String(name), nil
		}
		// This variable is not for us, restore what the original
		// variable string will have looked like for an Expand
		// that comes later.
		return fmt.Sprintf("$(%s)", name), nil
	})

	if err != nil {
		ctx.PropertyErrorf("%s: %s", in, err.Error())
		return ""
	}

	return out
}
