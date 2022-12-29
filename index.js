// index.js

if (process.env.FAIL == 'true')
  throw new Error('Something failed');

if (process.env.CI_MODE === 'true') {
  console.log('Running in CI mode. App works. Exiting.');
  process.exit(0);
}

let cycleNo = 0;
console.log('Cycle #' + cycleNo++);

setInterval(
  () => console.log('Cycle #' + cycleNo++),
  10_000
);
