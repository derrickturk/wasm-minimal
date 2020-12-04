import init, { hello } from './wasm_minimal.js';

async function run()
{
    await init();
    hello('without wasm-pack');
}

run();
