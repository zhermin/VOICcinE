from pyperclip import copy

def A(coords): # (A):
    return (f"\
else if ((x >= {coords[0]} && x < {coords[0]}+2)   && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]} && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]}+6 && y < {coords[1]}+8))")

def B(coords): # (B):
    return (f"\
else if ((x >= {coords[0]} && x < {coords[0]}+2)   && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+4)   && (y >= {coords[1]} && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]}+2 && y < {coords[1]}+4))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+4)   && (y >= {coords[1]}+4 && y < {coords[1]}+6))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]}+6 && y < {coords[1]}+8))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+4)   && (y >= {coords[1]}+8 && y < {coords[1]}+10))")

def C(coords): # (C):
    return (f"\
else if ((x >= {coords[0]} && x < {coords[0]}+2)   && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]} && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]}+8 && y < {coords[1]}+10))")

def D(coords): # (D):
    return (f"\
else if ((x >= {coords[0]} && x < {coords[0]}+2)   && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]}+2 && y < {coords[1]}+8))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+4)   && (y >= {coords[1]} && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+4)   && (y >= {coords[1]}+8 && y < {coords[1]}+10))")

def E(coords): # (E):
    return (f"\
else if ((x >= {coords[0]} && x < {coords[0]}+2)   && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]} && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+4)   && (y >= {coords[1]}+4 && y < {coords[1]}+6))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]}+8 && y < {coords[1]}+10))")

def F(coords): # (F):
    return (f"\
else if ((x >= {coords[0]} && x < {coords[0]}+2)   && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]} && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+4)   && (y >= {coords[1]}+4 && y < {coords[1]}+6))")

def G(coords): # (G):
    return (f"\
else if ((x >= {coords[0]} && x < {coords[0]}+2)   && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}+5 && x < {coords[0]}+6) && (y >= {coords[1]}+4 && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]} && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]}+3 && x < {coords[0]}+5) && (y >= {coords[1]}+4 && y < {coords[1]}+6))\n\
else if ((x >= {coords[0]}+2 && x < {coords[0]}+5) && (y >= {coords[1]}+8 && y < {coords[1]}+10))")

def H(coords): # (H):
    return (f"\
else if ((x >= {coords[0]} && x < {coords[0]}+2)   && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]}+4 && y < {coords[1]}+6))")

def I(coords): # (I):
    return (f"\
else if ((x >= {coords[0]}+2 && x < {coords[0]}+4) && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]} && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]}+8 && y < {coords[1]}+10))")

def J(coords): # (J):
    return (f"\
else if ((x >= {coords[0]}+2 && x < {coords[0]}+4) && (y >= {coords[1]}   && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}   && x < {coords[0]}+6) && (y >= {coords[1]}   && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]}   && x < {coords[0]}+4) && (y >= {coords[1]}+8   && y < {coords[1]}+10))")

def K(coords): # (K):
    return (f"\
else if ((x >= {coords[0]}   && x < {coords[0]}+2) && (y >= {coords[1]}   && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]}   && y < {coords[1]}+4))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]}+6 && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+4) && (y >= {coords[1]}+4 && y < {coords[1]}+6))")

def L(coords): # (L):
    return (f"\
else if ((x >= {coords[0]} && x < {coords[0]}+2)   && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]}+8 && y < {coords[1]}+10))")

def M(coords): # (M):
    return (f"\
else if ((x >= {coords[0]} && x < {coords[0]}+2)   && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}+3 && x < {coords[0]}+4) && (y >= {coords[1]} && y < {coords[1]}+6))\n\
else if ((x >= {coords[0]}+5 && x < {coords[0]}+6) && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]} && y < {coords[1]}+2))")

def N(coords): # (N):
    return (f"\
else if ((x >= {coords[0]} && x < {coords[0]}+2)   && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]} && y < {coords[1]}+2))")

def O(coords): # (O):
    return (f"\
else if ((x >= {coords[0]} && x < {coords[0]}+2)   && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]} && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]}+8 && y < {coords[1]}+10))")

def P(coords): # (P):
    return (f"\
else if ((x >= {coords[0]} && x < {coords[0]}+2)   && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]} && y < {coords[1]}+6))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]} && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]}+4 && y < {coords[1]}+6))")

def R(coords): # (R):
    return (f"\
else if ((x >= {coords[0]} && x < {coords[0]}+2)   && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]} && y < {coords[1]}+6))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]}+8 && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]} && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+4)   && (y >= {coords[1]}+6 && y < {coords[1]}+8))")

def S(coords): # (S):
    return (f"\
else if ((x >= {coords[0]} && x < {coords[0]}+2)   && (y >= {coords[1]} && y < {coords[1]}+6))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]}+4 && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]} && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]}+4 && y < {coords[1]}+6))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]}+8 && y < {coords[1]}+10))")

def T(coords): # (T):
    return (f"\
else if ((x >= {coords[0]}+2 && x < {coords[0]}+4) && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]} && y < {coords[1]}+2))")

def U(coords): # (U):
    return (f"\
else if ((x >= {coords[0]} && x < {coords[0]}+2)   && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+6)   && (y >= {coords[1]}+8 && y < {coords[1]}+10))")

def V(coords): # (V):
    return (f"\
else if ((x >= {coords[0]} && x < {coords[0]}+2)   && (y >= {coords[1]} && y < {coords[1]}+8))\n\
else if ((x >= {coords[0]}+2 && x < {coords[0]}+4) && (y >= {coords[1]}+8 && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]} && y < {coords[1]}+8))")

def W(coords): # (W):
    return (f"\
else if ((x >= {coords[0]} && x < {coords[0]}+2)   && (y >= {coords[1]} && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}+2 && x < {coords[0]}+3) && (y >= {coords[1]}+8 && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}+3 && x < {coords[0]}+4) && (y >= {coords[1]}+6 && y < {coords[1]}+8))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+5) && (y >= {coords[1]}+8 && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}+5 && x < {coords[0]}+6) && (y >= {coords[1]} && y < {coords[1]}+10))")

def X(coords): # (X):
    return (f"\
else if ((x >= {coords[0]} && x < {coords[0]}+2) && (y >= {coords[1]} && y < {coords[1]}+4))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+2) && (y >= {coords[1]}+6 && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}+2 && x < {coords[0]}+4) && (y >= {coords[1]}+4 && y < {coords[1]}+6))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]} && y < {coords[1]}+4))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]}+6 && y < {coords[1]}+10))")

def Y(coords): # (Y):
    return (f"\
else if ((x >= {coords[0]}   && x < {coords[0]}+2) && (y >= {coords[1]}   && y < {coords[1]}+6))\n\
else if ((x >= {coords[0]}+2 && x < {coords[0]}+4) && (y >= {coords[1]}+4 && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]}   && y < {coords[1]}+6))")

def zero(coords): # (0):
    return (f"\
else if ((x >= {coords[0]}   && x < {coords[0]}+2)   && (y >= {coords[1]}   && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6)   && (y >= {coords[1]}   && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}   && x < {coords[0]}+6)   && (y >= {coords[1]}   && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]}   && x < {coords[0]}+6)   && (y >= {coords[1]}+8 && y < {coords[1]}+10))")

def one(coords): # (1):
    return (f"\
else if ((x >= {coords[0]}+2 && x < {coords[0]}+4) && (y >= {coords[1]}   && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}   && x < {coords[0]}+4) && (y >= {coords[1]}   && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]}   && x < {coords[0]}+6) && (y >= {coords[1]}+8 && y < {coords[1]}+10))")

def two(coords): # (2):
    return (f"\
else if ((x >= {coords[0]}   && x < {coords[0]}+2) && (y >= {coords[1]}+4 && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]}   && y < {coords[1]}+6))\n\
else if ((x >= {coords[0]}   && x < {coords[0]}+6) && (y >= {coords[1]}   && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]}   && x < {coords[0]}+6) && (y >= {coords[1]}+4 && y < {coords[1]}+6))\n\
else if ((x >= {coords[0]}   && x < {coords[0]}+6) && (y >= {coords[1]}+8 && y < {coords[1]}+10))")

def three(coords): # (3):
    return (f"\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]}   && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}   && x < {coords[0]}+6) && (y >= {coords[1]}   && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]}+2 && x < {coords[0]}+6) && (y >= {coords[1]}+4 && y < {coords[1]}+6))\n\
else if ((x >= {coords[0]}   && x < {coords[0]}+6) && (y >= {coords[1]}+8 && y < {coords[1]}+10))")

def five(coords): # (5):
    return (f"\
else if ((x >= {coords[0]}   && x < {coords[0]}+2)   && (y >= {coords[1]}   && y < {coords[1]}+6))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6)   && (y >= {coords[1]}+4 && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}   && x < {coords[0]}+6)   && (y >= {coords[1]}   && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]}   && x < {coords[0]}+6)   && (y >= {coords[1]}+4 && y < {coords[1]}+6))\n\
else if ((x >= {coords[0]}   && x < {coords[0]}+6)   && (y >= {coords[1]}+8 && y < {coords[1]}+10))")

def nine(coords): # (9):
    return (f"\
else if ((x >= {coords[0]}   && x < {coords[0]}+2) && (y >= {coords[1]}   && y < {coords[1]}+6))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]}   && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}   && x < {coords[0]}+6) && (y >= {coords[1]}   && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]}   && x < {coords[0]}+6) && (y >= {coords[1]}+4 && y < {coords[1]}+6))\n\
else if ((x >= {coords[0]}   && x < {coords[0]}+6) && (y >= {coords[1]}+8 && y < {coords[1]}+10))")

def exclamation(coords): # (!):
    return (f"\
else if ((x >= {coords[0]} && x < {coords[0]}+2) && (y >= {coords[1]}   && y < {coords[1]}+6))\n\
else if ((x >= {coords[0]} && x < {coords[0]}+2) && (y >= {coords[1]}+8 && y < {coords[1]}+10))")

def comma(coords): # (,):
    return (f"\
else if ((x >= {coords[0]}   && x < {coords[0]}+2) && (y >= {coords[1]}   && y < {coords[1]}+4))\n\
else if ((x >= {coords[0]}+2 && x < {coords[0]}+4) && (y >= {coords[1]} && y < {coords[1]}+6))")

def apostrophe(coords): # ('):
    return (f"else if ((x >= {coords[0]}   && x < {coords[0]}+2) && (y >= {coords[1]}   && y < {coords[1]}+4))")

def dash(coords): # (-):
    return (f"\
else if ((x >= {coords[0]} && x < {coords[0]}+5) && (y >= {coords[1]} && y < {coords[1]}+2))")

def percent(coords): # (%):
    return (f"\
else if ((x >= {coords[0]}   && x < {coords[0]}+2) && (y >= {coords[1]}   && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]}   && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]}+3 && x < {coords[0]}+5) && (y >= {coords[1]}+2 && y < {coords[1]}+4))\n\
else if ((x >= {coords[0]}+2 && x < {coords[0]}+4) && (y >= {coords[1]}+4 && y < {coords[1]}+6))\n\
else if ((x >= {coords[0]}+1 && x < {coords[0]}+3) && (y >= {coords[1]}+6 && y < {coords[1]}+8))\n\
else if ((x >= {coords[0]}   && x < {coords[0]}+2) && (y >= {coords[1]}+8 && y < {coords[1]}+10))\n\
else if ((x >= {coords[0]}+4 && x < {coords[0]}+6) && (y >= {coords[1]}+8 && y < {coords[1]}+10))")

def dots(coords): # (...):
    return (f"\
else if ((x >= {coords[0]}   && x < {coords[0]}+2) && (y >= {coords[1]} && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]}+3 && x < {coords[0]}+5) && (y >= {coords[1]} && y < {coords[1]}+2))\n\
else if ((x >= {coords[0]}+6 && x < {coords[0]}+8) && (y >= {coords[1]} && y < {coords[1]}+2))")

def big0(coords):
    return (f"\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}    && y < {coords[1]}+3))\n\
else if ((x >= {coords[0]}+10 && x < {coords[0]}+12) && (y >= {coords[1]}    && y < {coords[1]}+12))\n\
else if ((x >= {coords[0]}+10 && x < {coords[0]}+12) && (y >= {coords[1]}+10 && y < {coords[1]}+21))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}+18 && y < {coords[1]}+21))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+3)  && (y >= {coords[1]}+10 && y < {coords[1]}+21))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+3)  && (y >= {coords[1]}    && y < {coords[1]}+12)) \n\
        ")

def big1(coords):
    return (f"else if ((x >= {coords[0]}    && x < {coords[0]}+3)  && (y >= {coords[1]}    && y < {coords[1]}+21))")

def big2(coords):
    return (f"\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}    && y < {coords[1]}+3))\n\
else if ((x >= {coords[0]}+10 && x < {coords[0]}+12) && (y >= {coords[1]}    && y < {coords[1]}+12))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}+18 && y < {coords[1]}+21))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+3)  && (y >= {coords[1]}+10 && y < {coords[1]}+21))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}+10 && y < {coords[1]}+12))\n\
        ")

def big3(coords):
    return (f"\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}    && y < {coords[1]}+3))\n\
else if ((x >= {coords[0]}+10 && x < {coords[0]}+12) && (y >= {coords[1]}    && y < {coords[1]}+12))\n\
else if ((x >= {coords[0]}+10 && x < {coords[0]}+12) && (y >= {coords[1]}+10 && y < {coords[1]}+21))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}+18 && y < {coords[1]}+21))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}+10 && y < {coords[1]}+12))\n\
        ")

def big4(coords):
    return (f"\
else if ((x >= {coords[0]}+10 && x < {coords[0]}+12) && (y >= {coords[1]}    && y < {coords[1]}+12))\n\
else if ((x >= {coords[0]}+10 && x < {coords[0]}+12) && (y >= {coords[1]}+10 && y < {coords[1]}+21))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+3)  && (y >= {coords[1]}    && y < {coords[1]}+12))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}+10 && y < {coords[1]}+12))\n\
        ")

def big5(coords):
    return (f"\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}    && y < {coords[1]}+3))\n\
else if ((x >= {coords[0]}+10 && x < {coords[0]}+12) && (y >= {coords[1]}+10 && y < {coords[1]}+21))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}+18 && y < {coords[1]}+21))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+3)  && (y >= {coords[1]}    && y < {coords[1]}+12))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}+10 && y < {coords[1]}+12))\n\
        ")

def big6(coords):
    return (f"\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}    && y < {coords[1]}+3))\n\
else if ((x >= {coords[0]}+10 && x < {coords[0]}+12) && (y >= {coords[1]}+10 && y < {coords[1]}+21))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}+18 && y < {coords[1]}+21))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+3)  && (y >= {coords[1]}+10 && y < {coords[1]}+21))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+3)  && (y >= {coords[1]}    && y < {coords[1]}+12))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}+10 && y < {coords[1]}+12))\n\
        ")
        
def big7(coords):
    return (f"\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}    && y < {coords[1]}+3))\n\
else if ((x >= {coords[0]}+10 && x < {coords[0]}+12) && (y >= {coords[1]}    && y < {coords[1]}+12))\n\
else if ((x >= {coords[0]}+10 && x < {coords[0]}+12) && (y >= {coords[1]}+10 && y < {coords[1]}+21))\n\
        ")
        
def big8(coords):
    return (f"\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}    && y < {coords[1]}+3))\n\
else if ((x >= {coords[0]}+10 && x < {coords[0]}+12) && (y >= {coords[1]}    && y < {coords[1]}+12))\n\
else if ((x >= {coords[0]}+10 && x < {coords[0]}+12) && (y >= {coords[1]}+10 && y < {coords[1]}+21))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}+18 && y < {coords[1]}+21))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+3)  && (y >= {coords[1]}+10 && y < {coords[1]}+21))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+3)  && (y >= {coords[1]}    && y < {coords[1]}+12))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}+10 && y < {coords[1]}+12))\n\
        ")

def big9(coords):
    return (f"\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}    && y < {coords[1]}+3))\n\
else if ((x >= {coords[0]}+10 && x < {coords[0]}+12) && (y >= {coords[1]}    && y < {coords[1]}+12))\n\
else if ((x >= {coords[0]}+10 && x < {coords[0]}+12) && (y >= {coords[1]}+10 && y < {coords[1]}+21))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}+18 && y < {coords[1]}+21))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+3)  && (y >= {coords[1]}    && y < {coords[1]}+12))\n\
else if ((x >= {coords[0]}    && x < {coords[0]}+12) && (y >= {coords[1]}+10 && y < {coords[1]}+12))\n\
        ")

def period(coords): # (.):
    return (f"else if ((x >= {coords[0]}   && x < {coords[0]}+1) && (y >= {coords[1]}   && y < {coords[1]}+1))")

def point(coords): # (direct coords):
    return (f"else if (x == {coords[0]} && y == {coords[1]})")

def hline(coords): # (only x change):
    return (f"else if ((x >= {coords[0]} && x <= {coords[2]}) && (y == {coords[1]}))")

def vline(coords): # (only y change):
    return (f"else if ((x == {coords[0]}) && (y >= {coords[1]} && y <= {coords[3]}))")

def rectangle(coords):
    return (f"else if ((x >= {coords[0]} && x <= {coords[2]}) && (y >= {coords[1]} && y <= {coords[3]}))")

print ("Python to Verilog Alphabets")
while True:
    try:
        letter = input("\nCHARACTER? >> ").upper()
        if letter == "A": copy(A(input("(x,y) > ").split(",")))
        elif letter == "B": copy(B(input("(x,y) > ").split(",")))
        elif letter == "C": copy(C(input("(x,y) > ").split(",")))
        elif letter == "D": copy(D(input("(x,y) > ").split(",")))
        elif letter == "E": copy(E(input("(x,y) > ").split(",")))
        elif letter == "F": copy(F(input("(x,y) > ").split(",")))
        elif letter == "G": copy(G(input("(x,y) > ").split(",")))
        elif letter == "H": copy(H(input("(x,y) > ").split(",")))
        elif letter == "I": copy(I(input("(x,y) > ").split(",")))
        elif letter == "J": copy(J(input("(x,y) > ").split(",")))
        elif letter == "K": copy(I(input("(x,y) > ").split(",")))
        elif letter == "L": copy(L(input("(x,y) > ").split(",")))
        elif letter == "M": copy(M(input("(x,y) > ").split(",")))
        elif letter == "N": copy(N(input("(x,y) > ").split(",")))
        elif letter == "O": copy(O(input("(x,y) > ").split(",")))
        elif letter == "P": copy(P(input("(x,y) > ").split(",")))
        elif letter == "R": copy(R(input("(x,y) > ").split(",")))
        elif letter == "S": copy(S(input("(x,y) > ").split(",")))
        elif letter == "T": copy(T(input("(x,y) > ").split(",")))
        elif letter == "U": copy(U(input("(x,y) > ").split(",")))
        elif letter == "V": copy(V(input("(x,y) > ").split(",")))
        elif letter == "W": copy(W(input("(x,y) > ").split(",")))
        elif letter == "X": copy(X(input("(x,y) > ").split(",")))
        elif letter == "Y": copy(Y(input("(x,y) > ").split(",")))
        elif letter == "0": copy(zero(input("(x,y) > ").split(",")))
        elif letter == "1": copy(one(input("(x,y) > ").split(",")))
        elif letter == "2": copy(two(input("(x,y) > ").split(",")))
        elif letter == "3": copy(three(input("(x,y) > ").split(",")))
        elif letter == "5": copy(five(input("(x,y) > ").split(",")))
        elif letter == "9": copy(nine(input("(x,y) > ").split(",")))
        elif letter == "!": copy(exclamation(input("(x,y) > ").split(",")))
        elif letter == ",": copy(comma(input("(x,y) > ").split(",")))
        elif letter == "'": copy(apostrophe(input("(x,y) > ").split(",")))
        elif letter == "-": copy(dash(input("(x,y) > ").split(",")))
        elif letter == "%": copy(percent(input("(x,y) > ").split(",")))
        elif letter == "...": copy(dots(input("(x,y) > ").split(",")))
        elif letter == ".": copy(period(input("(x,y) > ").split(",")))

        elif letter == "PT": copy(point(input("(x,y) > ").split(",")))
        elif letter == "HL": copy(hline(input("[Y UNCHANGED] (x1,y1,x2) > ").split(",")))
        elif letter == "VL": copy(vline(input("[X UNCHANGED] (x1,y1,y2) > ").split(",")))
        elif letter == "RC": copy(rectangle(input("(x1,y1,x2,y2) > ").split(",")))

        elif letter == "B0": copy(big0(input("(x,y) > ").split(",")))
        elif letter == "B1": copy(big1(input("(x,y) > ").split(",")))
        elif letter == "B2": copy(big2(input("(x,y) > ").split(",")))
        elif letter == "B3": copy(big3(input("(x,y) > ").split(",")))
        elif letter == "B4": copy(big4(input("(x,y) > ").split(",")))
        elif letter == "B5": copy(big5(input("(x,y) > ").split(",")))
        elif letter == "B6": copy(big6(input("(x,y) > ").split(",")))
        elif letter == "B7": copy(big7(input("(x,y) > ").split(",")))
        elif letter == "B8": copy(big8(input("(x,y) > ").split(",")))
        elif letter == "B9": copy(big9(input("(x,y) > ").split(",")))

        elif letter == "PTS":
            text = input("POINTS >> ")
            output = ""
            text = text.replace("]", "").split("[")[1:]
            length = len(text)
            for i in range(length):
                output += point(text[i].split(","))
                output += "\n"
            
            print(output)
            copy(output)

        elif letter == "HLS":
            text = input("HLINES >> ")
            output = ""
            text = text.replace("]", "").split("[")[1:]
            length = len(text)
            for i in range(length):
                temp = text[i].split(" to ")
                temp2 = [temp[j].split(",")  for j in range(len(temp))]
                temp3 = [m for k in temp2 for m in k]
                output += hline(temp3)
                output += "\n"
            
            print(output)
            copy(output)

        elif letter == "VLS":
            text = input("VLINES >> ")
            output = ""
            text = text.replace("]", "").split("[")[1:]
            length = len(text)
            for i in range(length):
                temp = text[i].split(" to ")
                temp2 = [temp[j].split(",")  for j in range(len(temp))]
                temp3 = [m for k in temp2 for m in k]
                output += vline(temp3)
                output += "\n"
            
            print(output)
            copy(output)

        elif letter == "RCS":
            text = input("RECTANGLES >> ")
            output = ""
            text = text.replace("]", "").split("[")[1:]
            length = len(text)
            for i in range(length):
                temp = text[i].split(" to ")
                temp2 = [temp[j].split(",")  for j in range(len(temp))]
                temp3 = [m for k in temp2 for m in k]
                output += rectangle(temp3)
                output += "\n"
            
            print(output)
            copy(output)

        elif letter == "TEXT":
            text = input("TEXTS >> ")
            output = ""
            text = text.replace("]:", "").split("[")[1:]
            length = len(text)
            for i in range(length):
                temp = text[i].split(" ")
                if temp[0] == "A": output += A(temp[1].split(","))
                elif temp[0] == "B": output += B(temp[1].split(","))
                elif temp[0] == "C": output += C(temp[1].split(","))
                elif temp[0] == "D": output += D(temp[1].split(","))
                elif temp[0] == "E": output += E(temp[1].split(","))
                elif temp[0] == "F": output += F(temp[1].split(","))
                elif temp[0] == "G": output += G(temp[1].split(","))
                elif temp[0] == "H": output += H(temp[1].split(","))
                elif temp[0] == "I": output += I(temp[1].split(","))
                elif temp[0] == "J": output += J(temp[1].split(","))
                elif temp[0] == "K": output += K(temp[1].split(","))
                elif temp[0] == "L": output += L(temp[1].split(","))
                elif temp[0] == "M": output += M(temp[1].split(","))
                elif temp[0] == "N": output += N(temp[1].split(","))
                elif temp[0] == "O": output += O(temp[1].split(","))
                elif temp[0] == "P": output += P(temp[1].split(","))
                elif temp[0] == "R": output += R(temp[1].split(","))
                elif temp[0] == "S": output += S(temp[1].split(","))
                elif temp[0] == "T": output += T(temp[1].split(","))
                elif temp[0] == "U": output += U(temp[1].split(","))
                elif temp[0] == "V": output += V(temp[1].split(","))
                elif temp[0] == "W": output += W(temp[1].split(","))
                elif temp[0] == "X": output += X(temp[1].split(","))
                elif temp[0] == "Y": output += Y(temp[1].split(","))
                elif temp[0] == "0": output += zero(temp[1].split(","))
                elif temp[0] == "1": output += one(temp[1].split(","))
                elif temp[0] == "2": output += two(temp[1].split(","))
                elif temp[0] == "3": output += three(temp[1].split(","))
                elif temp[0] == "5": output += five(temp[1].split(","))
                elif temp[0] == "9": output += nine(temp[1].split(","))
                elif temp[0] == "!": output += exclamation(temp[1].split(","))
                elif temp[0] == ",": output += comma(temp[1].split(","))
                elif temp[0] == "'": output += apostrophe(temp[1].split(","))
                elif temp[0] == "-": output += dash(temp[1].split(","))
                elif temp[0] == "%": output += percent(temp[1].split(","))
                elif temp[0] == "...": output += dots(temp[1].split(","))
                elif temp[0] == ".": output += period(temp[1].split(","))
                output += "\n"

            print(output)
            copy(output)

        else: raise Exception("Wrong Character")

    except Exception as e:
        print (f"\nINVALID ENTRY : {e}\n")