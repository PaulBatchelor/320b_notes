============================
Fri Jan  8 07:45:33 PST 2016
============================

difference eqn (related to difference eqn):

y_n = b_0 x_n + b_1 x_n +  \cdots + b_Mx_{n*m}
    - a_1 y_{n-1} \cdots -a_n y_{n-N}

^ check this

## Recall simplest lowpass filter
    y_n = x_n + x_{n - 1} 
            (M=1, N =0) 
            (b_0 = 1, b_1 = 1)


    (FIR, order 1) 

    h_n = \delta_n + \delta_{n - 1} = [1, 1, 0, \dots]
    
    freq response:
    H(w) = \mbox{DTFT}(h) = 1 + e^{-jwT}

    amplitude response:
    G(w) = |H(w)| = 2\cos(\omega T / 2), |wT| < \pi
% how to do big theta
    phase response:
    \theta(w) = angle H(w) = -wt/2  = -\pi f T
   
    phase delay:
        P(\omega) = -\theta(\omega)/N = + T / 2

% how do I do the equal with the triangle?
    group delay:
        D(\omega) = -2 / ??? \theta(\omega) = T / 2    

    phase delay and group delay are a 1/2 sample delay    

    These characteristics all apply to a Linear Time Invariant (LTI) filter


## Recall test sinusoid:

x(n) = e^{j\omega t_n} | \omega = 2 \pi fs / 4 = 2 \pi / 4T
                        => \omegaT = pi/2
                        => x(n) = e^{j\omega n T} = e^{j (pi/2) n} = j^n

now, y(n) = x(n) + x(n -1)
          = j^n + j^{n - 1} = j^n(1 + 1/j)
          = (1 - j)j^n = (1 - j)x(n)
 
=> G(\pi / 2) ?= \sqrt{1^2 + 1^2} = \sqrt{2} (check)
T = 1     

= 2\cos(\omegaT/2) | \omega T = \pi / 2 = 2 \cos(\pi / 4) = 2 / \sqrt{2} = \sqrt{2}

\theta(\pi / 2) ?= tan^-1(-1 / 1) = - \pi / 4
= -\omegaT / 2 = -\pi/2 1/2 = - \pi / 2

Thus, H(\pi / 2) = e^{-j \pi/4} \sqrt{2} 
= [\cos(\pi / 4) - j \sin(\pi / 4) ] \sqrt{2}
= (1 - j)

y(n) = j^n + j^{n - 1}
y(1) = j + j^0 = j + 1 = \sqrt{2} \cdot e^{j(pi/2 - pi/4)}
y(3) = j^2 + j^2 = -j - 1 = \sqrt{2} \cdot e^{3\pi / 2 = \pi / 4}


## Phase Delay: \theta(\omega) = phase shift (rad)

P(w) ^=  - \theta(\omega) / w = - \mbox{phase shift} / \mbox{(rad / sec)}
    = -\theta / 2 \pi 4 = -(\theta / 2 pi) \mbox{cycle} \cdot \mbox{Period}

phase shift gives you a fraction of a period

## Group delay

D(\omega) ^=  -d/d\omega \theta(\omega)

Measure of delay that is local to each frequency zone. 
If the phase is going crazy, you just pick a particular frequency and linearize
at that point.

Group delay is phase delay at a particular freq
Slope of the linearized delay



============================
Thu Jan  7 07:51:51 PST 2016
============================

Superposition: needs linearity and time invariance. aka linear time invariant
systems

"seeing the elephant from every angle, and boy do you know elephants by the end of that"

- Linear, time-invariant = LTI
? look up time invariant again:
    if you shift the input in time, the output moves the same way

superposition: "ghosts in the room, you see them even though they are superimposed in the mixture" 
? differential filtering, common filtering (13 min approx)
homogeneity: linear system is additive and homogeneous



============================
Wed Jan  6 07:34:54 PST 2016
============================

complex spectral window

every filter can be represented as an impulse response

h is time invariant: does not change over time

nonlienar examples: fail the test of linearity

signal detendant(?): look up

Work on using fourier theorems to visualize changes in frequency and time domain

DTFT: similar to DFT (DFT_inf), but frequency is continuous (no k in kernel)

how to pull out half the phase of a complex expon

what is G(w) again?

