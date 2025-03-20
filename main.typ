#set page(
    paper: "a4"
)

#set text(
  font: "Liberation Serif"
)

== Objectives

- To observe the output waveform of clipping circuits on an oscilloscope.
- To measure the clipped voltage and compare it with the calculated values.
- To understand how clipping circuits remove positive or negative voltage peaks from a signal.
- To analyze the effect of adding a DC voltage source to the clipping circuit.

== Results

In the figures, the yellow line represents the input AC voltage $V_"in"$, and
the green line represents the voltage being read $V_"o"$.

#figure(
    image("./figures/remove-positive-voltage.jpeg", width: 70%),
    caption: [To Remove Positive Voltage Above $+V_y$ Level]
)

#figure(
    image("./figures/remove-negative-voltage.jpeg", width: 70%),
    caption: [To Remove Negative Voltage Peak Below $-V_y$ Level]
)

#figure(
    image("./figures/add-positive-dc-source.jpeg", width: 70%),
    caption: [Adding Extra Positive DC Voltage Source (+5V)]
) <circuit-with-positive-dc-source>

#figure(
    image("./figures/add-negative-dc-source.jpeg", width: 70%),
    caption: [Adding Extra Negative DC Voltage Source (-5V)]
) <circuit-with-negative-dc-source>

== Questions

=== Question 1

Switching the diode type from silicon to germanium will result in a lower
threshold voltage, as silicon has a threshold voltage of $V_y = 0.7V$, while
germanium has $V_y = 0.3V$.

We also have to consider a change in the breakdown voltage since germanium
diodes have a significantly lower breakdown voltage than silicon diodes.
Silicon can withstand high voltages, which makes it much more flexible than
germanium, which is the softer more fragile type of the two. 

Using germanium in the context of the experiment, the output voltage will be
clipped below $4.7V$ in @circuit-with-positive-dc-source rather than $4.3V$, and below
$-5.3V$ in @circuit-with-negative-dc-source rather than $-5.7V$.

=== Question 2

==== Circuit 3

#figure(
    image("./figures/circuit3.jpeg", width: 50%),
    caption: [Circuit used in @circuit-with-positive-dc-source]
) <schematics-of-positive>

In @circuit-with-positive-dc-source, The input voltage is being clipped below a
certain threshold. In @schematics-of-positive, the anode of the diode faces
a positive DC source of $5V$, while the cathode of the diode faces the positive
side of $V_"in"$.

For the voltage to be read in $V_"o"$, $V_"in"$ facing the negative side of the
diode must be larger than the combined voltage in the positive side.

The $5V$ DC is combined with the internal diode voltage of $0.7V$, which when
the negative side of the diode faces $V_"in"$, $V_"o"$ is expressed as follows:

$ "When" V_"in" > 5 - 0.7 $
$ V_"o" = V_"in" $

$ "When" V_"in" <= 5 - 0.7 $
$ V_"o" = 4.3V $

This is shown in the oscilloscope output in @circuit-with-positive-dc-source.

==== Circuit 4

#figure(
    image("./figures/circuit4.jpeg", width: 50%),
    caption: [Circuit used in @circuit-with-negative-dc-source]
) <schematics-of-negative>

The setup is the same, except that the DC voltage facing the anode of the diode
is $-5V$ as seen in @schematics-of-negative.

The $V_o$ becomes as follows: 

$ "When" V_"in" > -5 -0.7 $
$ V_"o" = V_"in" $

$ "When" V_"in" <= -5 -0.7 $
$ V_"o" = -5.7V $

As in, $V_o$ is -5.7V when Vin is smaller than -5.7V. this is shown in
@circuit-with-negative-dc-source.

=== Question 3

A diode acts like an open circuit for several reasons, primarily when it is in
reverse bias.

In reverse bias, the positive side of the power supply is connected to the
cathode (negative side) of the diode, and the negative side to the anode
(positive side). Under this condition:

- No current flows through the diode because the diode blocks current flow (i.e., acts as an open circuit).
- The diode only allows current to flow when it is in forward bias (when the
anode is more positive than the cathode), but only if the forward voltage
exceeds the threshold.

In reverse bias, the diode will behave like an open circuit and effectively
prevent current flow unless the reverse voltage exceeds the diode's breakdown
voltage.

This behavior explains why in @schematics-of-positive and
@schematics-of-negative, when the input voltage ($V_"in"$) is lower than a
certain threshold relative to the DC voltage, the diode effectively "shuts off"
current flow and causes the output voltage ($V_o$) to be clipped to the
respective values ($4.3V$ and $-5.7V$).

Other cases when the diode acts like an open circuit is when the applied voltage
is smaller than the diode's reverse breakdown voltage (for silicon, typically
greater than $100V$), or when it is in forward bias, but the input voltage is
below the threshold voltage of the diode.
