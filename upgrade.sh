VERSION=$1

echo "Upgrading Flux2 toolkit to $VERSION"
flux install \
--version=$VERSION \
--components-extra image-reflector-controller,image-automation-controller \
--export > arm/flux-system/gotk-components.yaml

git add arm/flux-system/gotk-components.yaml
git commit -m "Flux: upgrade to $VERSION"
git push