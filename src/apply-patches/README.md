
# Apply Patches to Simplelink SDK (apply-patches)

Applies patches to the SDK in the devcontainer

## Example Usage

```json
"features": {
    "ghcr.io/tl-sl/dev-features/apply-patches:0": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| gitEmail | - | string | user@example.com |
| gitName | - | string | Anon User |
| patchesDirectory | The directory where the patches are located | string | /opt/sdk_patches |
| sdkDirectory | The directory where the SDK is located | string | /opt/ti/ot-ti |
| xoscTuning | Set Xosc Tuning cap array | string | 0xC1 |



---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/tl-sl/dev-features/blob/main/src/apply-patches/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
