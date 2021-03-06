VERSION=$(flux --version | cut -d" " -f3)

echo "Upgrading Flux2 toolkit to $VERSION"
flux install \
--components-extra image-reflector-controller,image-automation-controller \
--export > arm/flux-system/gotk-components.yaml

git add arm/flux-system/gotk-components.yaml
git commit -m "Flux: upgrade to $VERSION"
git push