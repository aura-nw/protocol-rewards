RED_COLOR='\033[0;31m'

echo "Checking env variables..."
if [ "$RPC_URL" = "" ]; then echo "${RED_COLOR}- Missing rpc RPC_URL env variable"; exit 1; fi
if [ "$PRIVATE_KEY" = "" ]; then echo "${RED_COLOR}- Missing rpc PRIVATE_KEY env variable"; exit 1; fi
if [ "$VERIFIER_URL" = "" ]; then echo "${RED_COLOR}- Missing rpc VERIFIER_URL env variable"; exit 1; fi

forge create --rpc-url $RPC_URL --private-key $PRIVATE_KEY ProtocolRewards \
  --verify --verifier sourcify --verifier-url $VERIFIER_URL
