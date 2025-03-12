// Function to convert repository names from drt-*-sc to drt-sc-*
function convertRepoNames(repoNames) {
  const results = {
    renamed: [],
    original: []
  };
  
  repoNames.forEach(repoName => {
    // Match the pattern drt-*-sc
    const match = repoName.match(/^drt-(.+)-go$/);
    
    if (match) {
      // Extract the middle part
      const middlePart = match[1];
      // Create new name: drt-sc-{middle}
      const newName = `drt-go-${middlePart}`;
      
      results.renamed.push({
        original: repoName,
        new: newName
      });
    } else {
      results.original.push(repoName);
    }
  });
  
  return results;
}

// Function to generate shell commands for renaming
function generateCommands(results) {
  let commands = "#!/bin/bash\n\n# Commands to rename repositories\n\n";
  
  results.renamed.forEach(repo => {
    commands += `${repo.new}\n`;
  });
  results.original.forEach(repo => {
    commands += `${repo}\n`;
  });
  
  return commands;
}

// Sample usage with the provided list
const repoList = `
drt-sc-attestation
drt-sc-band-bridge
drt-sc-bitswing
drt-sc-busd
drt-sc-chainlink
drt-sc-delegation
drt-sc-deprecated-reproducible-contract-build-example
drt-sc-digital-cash
drt-sc-distribution
drt-sc-dns
drt-sc-energy-competition-winners-extraction
drt-sc-exchange
drt-sc-exchange-tools
drt-sc-experiments
drt-sc-flash-mint
drt-sc-human
drt-sc-launchpad
drt-sc-lend
drt-sc-liquid-staking
drt-sc-metabonding
drt-sc-nft-collection-minter
drt-sc-nft-marketplace
drt-sc-ping-pong
drt-sc-polynetwork-bridge
drt-sc-pre-staking
drt-sc-savings-account
drt-sc-sovereign
drt-sc-stablecoin
drt-sc-template
axelar-mvx-amplifier
axelar-mvx-relayer
blockatlas
blockbook
blockchain-etl-public-datasets
bls-go-binary
bls-wasm
chain-simulator-reusable-workflow
Charts
concurrent-map
crypto-address-validator
cryptozombie-lessons
cryptozombies-lesson-code
DateHelper
DefiLlama-Adapters
eth-phishing-detect
firehose-multiversx
FlagKit
full-stack-docker-compose
go-ext-wasm
go-libp2p
go-libp2p-kad-dht
go-libp2p-kbucket
go-libp2p-pubsub
go-libp2p-routing-helpers
go-libp2p-testing
hashlips_art_engine
iso_8583
k
ledger-live
ledger-live-common
ledger-live-desktop
ledger-live-mobile
ledgerhq-ledgercomm
ledgerjs
multiversx
multiversx-etl
drt-rs-account-abstraction
drt-api-service
drt-assets
drt-assets-checker
drt-assets-fork
drt-battleofyields-site
drt-break-dapp
drt-bridge-eth-go
drt-rs-sc-bridge-eth
drt-sol-sc-bridge-eth
drt-builders-hub
drt-builders-hub-tutorials
drt-chain-benchmarks-config
drt-chain-benchmarks-scripts
drt-chain-chainlink-scripts
drt-chain-chainwalkers
drt-chain-communication-go
drt-chain-core-go
drt-chain-covalent-go
drt-chain-crypto-go
drt-chain-db-archive-scripts
drt-chain-deploy-go
drt-chain-devnet-config
drt-chain-es-indexer-go
drt-chain-go
drt-chain-governance-service
drt-chain-host-assessment
drt-chain-keys-monitor-go
drt-chain-logger-go
drt-chain-mainnet-config
drt-chain-mainnet-config-old
drt-chain-node-monitoring
drt-chain-notifier-go
drt-chain-observing-squad
drt-chain-p2p-go
drt-chain-parsers-go
drt-chain-polychain-relayer
drt-chain-proxy-go
drt-chain-rosetta
drt-chain-rosetta-checks
drt-chain-rosetta-docker
drt-chain-rosetta-docker-scripts
drt-chain-scenario-cli-go
drt-chain-scenario-go
drt-chain-scripts
drt-chain-sdk-go
drt-chain-simulator-examples-py
drt-chain-simulator-go
drt-chain-sovereign-bridge-go
drt-chain-sovereign-notifier-go
drt-chain-storage-go
drt-chain-testnet-config
drt-chain-tools-accounts-manager-go
drt-chain-tools-go
drt-chain-tools-js
drt-chain-vm-common-go
drt-chain-vm-debugger
drt-chain-vm-go
drt-chain-vm-v1_2-go
drt-chain-vm-v1_3-go
drt-chain-vm-v1_4-go
drt-chain-ws-connector-firehose-go
drt-chain-ws-connector-template-go
drt-community
drt-components-big-int
drt-rs-contracts
drt-rs-ctf-public
drt-dapp-template-sc-interactor
drt-defi-tutorial-dapp
drt-rs-defi-tutorial
drt-delegation-dapp
drt-delegation-service
drt-deprecated-chain-deep-history
drt-deprecated-core-js
drt-deprecated-dapp-core-components
drt-deprecated-hw-app
drt-deprecated-ide-vscode
drt-deprecated-node-prototype
drt-deprecated-sc-examples-clang
drt-deprecated-sdk-go-tools
drt-deprecated-sdk-js-contract-wrappers
drt-deprecated-sdk-js-metamask-proxy-provider
drt-deprecated-sdk-js-snippets
drt-deprecated-sdk-monorepo
drt-deprecated-sdk-py-core
drt-deprecated-sdk-py-examples
drt-deprecated-sdk-py-network-providers
drt-deprecated-sdk-py-wallet
drt-deprecated-starter-dapp
drt-deprecated-wallet-prototype
drt-dex-screener-adapter-service
drt-docs
drt-dune-analytics-service
drt-escrow-tutorial-dapp
drt-escrow-tutorial-service
drt-exchange-discover-client-service
drt-exchange-discover-express-client
drt-exchange-docs
drt-exchange-service
drt-explorer-dapp
drt-governance-service
drt-rs-ibc
drt-insomnia-plugin
drt-ledger-nano
drt-lite-extras-service
drt-lite-wallet-dapp
drt-locked-egld-aggregator-service
drt-metamask-snaps
drt-multi-factor-auth-go-service
drt-multisig-and-modules
drt-multisig-dapp
drt-native-auth-dapp
drt-native-auth-service
drt-nft-escrow-dapp
drt-nft-service
drt-nft-verify-dapp
drt-oracles-go
drt-paint-the-moon
drt-paymaster-service
drt-rs-ping-pong-dapp
drt-ping-pong-service
drt-ping-pong-service-old
drt-presentations
drt-presentations-pychain-2022
drt-presentations-sfbw-2019
drt-sc-actions
drt-sc-codec-tool
drt-sc-interaction-scripts
drt-sdk-abi-go
drt-sdk-analytics
drt-sdk-clang-contract-builder
drt-sdk-cpp
drt-sdk-csharp
drt-sdk-dapp
drt-sdk-dapp-core
drt-sdk-dapp-core-ui
drt-sdk-dapp-sc-explorer
drt-sdk-dapp-swap
drt-sdk-dapp-utils
drt-sdk-epoch-watcher
drt-sdk-event-processor
drt-sdk-go
drt-sdk-java
drt-sdk-js-bridge
drt-sdk-js-core
drt-sdk-js-examples
drt-sdk-js-exchange
drt-sdk-js-extension-provider
drt-sdk-js-guardians-provider
drt-sdk-js-hw-provider
drt-sdk-js-legacy-native-auth
drt-sdk-js-metamask-provider
drt-sdk-js-native-auth-client
drt-sdk-js-native-auth-server
drt-sdk-js-network-providers
drt-sdk-js-opera-provider
drt-sdk-js-passkey-provider
drt-sdk-js-pem-generator
drt-sdk-js-transaction-decoder
drt-sdk-js-wallet
drt-sdk-js-wallet-cli
drt-sdk-js-wallet-connect-provider
drt-sdk-js-wallet-http
drt-sdk-js-web-wallet-cross-window-provider
drt-sdk-js-web-wallet-iframe-provider
drt-sdk-js-web-wallet-provider
drt-sdk-js-webview-provider
drt-sdk-kotlin
drt-sdk-nestjs
drt-sdk-nestjs-cli
drt-sdk-php
drt-sdk-playground
drt-sdk-py
drt-sdk-py-cli
drt-sdk-py-exchange
drt-sdk-py-transaction-decoder
drt-rs-sdk
drt-sdk-rust-contract-builder
drt-sdk-specs
drt-sdk-testwallets
drt-sdk-transaction-processor
drt-simple-test-contracts
drt-specs
drt-rs-subscription-fee
drt-template-dapp
drt-template-dapp-nextjs
drt-template-devcontainers
drt-template-npm-service
drt-template-service
drt-template-telegram-game
drt-unity-avatar-core
drt-unity-avatar-loader
drt-unreal-avatar-loader
drt-utils-dapp
drt-rs-vm-executor
drt-vm-iele
drt-workflow-rerun-on-comment
nestjs-redis
noble-curves
node-walletconnect-bridge
onfido-ios-sdk
PhoneNumberKit
poly
protobuf
pywebassembly
runtimeverification-solidity
rs-sc-axelar-cgp
rs-sc-gravity-restaking
rs-sc-guilds
signalapp-libsignal
SOLL
StretchyHeaderViewController
SwipeCellKit
TagListView
thornode
transak-egld-multiversx-mainnet
trust-wallet-assets
TrustSDK-iOS
twofactor
wabt
wallet-core
WalletConnectSwiftV2
wasm-tools
wasmer
wasmparser.rs
xBulk
`.trim().split('\n');

const results = convertRepoNames(repoList);

console.log("Repositories to be renamed:");
results.renamed.forEach(repo => {
  console.log(`${repo.original} → ${repo.new}`);
});

console.log(`\nTotal: ${results.renamed.length} repositories will be renamed.`);

console.log("\nShell script for renaming:");
console.log(generateCommands(results));