package android
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

	Uses_media_extensions struct {
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

	Cant_reallocate_omx_buffers struct {
		Cflags []string
        }

	Uses_generic_camera_parameter_library struct {
		Srcs []string
	}
	Target_shim_libs struct {
		Cppflags []string
	}
	Uses_qti_camera_device struct {
		Cppflags []string
		Shared_libs []string
	}
}

type ProductVariables struct {
	Needs_text_relocations  *bool `json:",omitempty"`
	Uses_non_treble_camera  *bool `json:",omitempty"`
	Uses_generic_camera_parameter_library  *bool `json:",omitempty"`
	Specific_camera_parameter_library  *string `json:",omitempty"`
	Has_legacy_camera_hal1  *bool `json:",omitempty"`
	Uses_media_extensions   *bool `json:",omitempty"`
	BoardUsesQTIHardware  *bool `json:",omitempty"`
	BoardUsesQCOMHardware  *bool `json:",omitempty"`
	TargetUsesQCOMBsp  *bool `json:",omitempty"`
	TargetUsesQCOMLegacyBsp  *bool `json:",omitempty"`
	BoardUsesLegacyAlsa  *bool `json:",omitempty"`
	Cant_reallocate_omx_buffers *bool `json:",omitempty"`
	Target_shim_libs  *string `json:",omitempty"`
	Uses_qti_camera_device  *bool `json:",omitempty"`
}
