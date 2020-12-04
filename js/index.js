import init, { hello } from './wasm_minimal.js';

async function run()
{
    await init();
    hello('bitches');
}

run();
