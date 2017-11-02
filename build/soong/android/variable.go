package android_aosp
type Product_variables struct {
	Needs_text_relocations struct {
		Cppflags []string
	}

	Uses_non_treble_camera struct {
		Cflags []string
	}

	Has_legacy_camera_hal1 struct {
		Cflags []string
	}

	BoardUsesQTIHardware struct {
		Cflags []string
		Cppflags []string
	}

	BoardUsesQCOMHardware struct {
		Cflags []string
		Cppflags []string
	}

	TargetUsesQCOMBsp struct {
		Cflags []string
		Cppflags []string
	}

	TargetUsesQCOMLegacyBsp struct {
		Cflags []string
		Cppflags []string
	}

	BoardUsesLegacyAlsa struct {
		Cflags []string
		Cppflags []string
	}
}

type ProductVariables struct {
	Needs_text_relocations  *bool `json:",omitempty"`
	Uses_non_treble_camera  *bool `json:",omitempty"`
	Has_legacy_camera_hal1  *bool `json:",omitempty"`
	BoardUsesQTIHardware  *bool `json:",omitempty"`
	BoardUsesQCOMHardware  *bool `json:",omitempty"`
	TargetUsesQCOMBsp  *bool `json:",omitempty"`
	TargetUsesQCOMLegacyBsp  *bool `json:",omitempty"`
	BoardUsesLegacyAlsa  *bool `json:",omitempty"`
}
