v {xschem version=3.1.0 file_version=1.2

* Copyright 2022 GlobalFoundries PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
N 2560 -490 2560 -350 {
lab=VIN}
N 2560 -350 2600 -350 {
lab=VIN}
N 2560 -490 2600 -490 {
lab=VIN}
N 2640 -460 2640 -380 {
lab=VOUT}
N 2640 -320 2640 -290 {
lab=VSS}
N 2640 -550 2640 -520 {
lab=VDD}
N 2640 -420 2670 -420 {
lab=VOUT}
N 2530 -420 2560 -420 {
lab=VIN}
N 2640 -490 2660 -490 {
lab=VDD}
N 2660 -530 2660 -490 {
lab=VDD}
N 2640 -530 2660 -530 {
lab=VDD}
N 2640 -350 2660 -350 {
lab=VSS}
N 2660 -350 2660 -310 {
lab=VSS}
N 2640 -310 2660 -310 {
lab=VSS}
C {devices/iopin.sym} 2640 -550 3 0 {name=p2 lab=VDD}
C {devices/ipin.sym} 2530 -420 0 0 {name=p4 lab=VIN}
C {devices/opin.sym} 2670 -420 0 0 {name=p5 lab=VOUT}
C {symbols/pfet_03v3.sym} 2620 -490 0 0 {name=M4
L=0.56u
W=4.48u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 2620 -350 0 0 {name=M5
L=0.56u
W=2.24u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/iopin.sym} 2640 -290 1 0 {name=p1 lab=VSS}
