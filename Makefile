
test: test-wasm

test-wasm:
	test/run.py --wasm $$(which wasm-reference) test/*.wast

