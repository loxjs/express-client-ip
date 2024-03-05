npm run lint
npm run build
cp README.md package.json lib
cd lib

current_registry=$(npm config get registry)
echo "Current npm registry is $current_registry"

npm config set registry https://registry.npmjs.org/
echo "npm registry has been set to https://registry.npmjs.org/"

npm publish . --access=public

npm config set registry $current_registry
echo "npm registry has been reset to $current_registry"

cd ..