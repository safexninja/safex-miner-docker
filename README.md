# safex-miner-docker
Running xmrig in docker, mining Safex Cash on default pool

Docker: <a href="https://hub.docker.com/r/safexninja/safex-miner" target="_blank">hub.docker.com/r/safexninja/safex-miner</a><br>
This will run Xmrig to mine Safex Cash, with the default pool being <a href="https://pool.safex.org/" target="_blank">pool.safex.org</a>
After starting the miner, visit the pool<a href="https://pool.safex.org/#worker_stats" target="_blank"> and look up your address</a> to see how it goes<br>
<br>
For more info see: <br>
<a href="https://xmrig.com" targe="_blank">https://xmrig.com</a> <br>
<a href="https://github.com/xmrig" targe="_blank">https://github.com/xmrig</a> <br><br>


<b>Be aware</b>: Mining from a container is not the most optimal way for mining. When you have a bit of experience you should look into running mining software directly from your physical hardware, but using this image is very easy and will give you some hashes.

<h1>Supported Tags</h1>
<ul>
<li><code>latest</code></li>
<li><code>xmrig6.12.1</code></li>
</ul>
<br>
<h1>Variables</h1>
<ul>
  <li><i>ADDRESS</i>: <b>set your mining address, never forget this</b></li>
  <li><i>WORKER</i>: the name of the worker to shown in the pool's dashboard, optional (default is "safex-miner")</li>
  <li><i>MAXCPULOAD</i>: the max cpu load in percentage used for configating the threads, optional (default is "100")</li>
  </ul>
<br>

<h1>Start mining</h1>
<br>
<h2>Setting address only</h2><br>
<code>$ sudo docker run -i -e ADDRESS=<b>Safex5z45o...<b>  safexninja/safex-miner</code>

<br><h2>Setting alternate workname and cpu load</h2>
<code>$ sudo docker run -i -e ADDRESS=<b>Safex5z45o...<b> -e MAXCPULOAD=50 -e WORKER=smurf safexninja/safex-miner</code>
<br><br>
<h1>Exit</h1>
To exit the node type <code>Control + C</code>. The container will be exited<br>
<br>
<h1>Installing Docker & Runing the node</h1>
Installing Docker on Ubuntu and run the latest node.<br>
If you have not installed docker yet, follow these steps:<br><br>

<code>$ sudo apt update</code><br>
<code>$ sudo apt install snapd</code><br>
<code>$ sudo snap install docker</code><br>
<code>$ sudo docker run -i -e ADDRESS=<b>Safex5z45o...<b> safexninja/safex-miner</code><br>
<br>
If you have docker installed already (i.e. Docker Desktop on Mac), then just run the last command only
