.PHONY: serve

js/wasm_minimal.js: src/lib.rs
	cargo build --target wasm32-unknown-unknown
	wasm-bindgen target\wasm32-unknown-unknown\debug\wasm_minimal.wasm --out-dir js --target web

serve: js/wasm_minimal.js
	python -m http.server
