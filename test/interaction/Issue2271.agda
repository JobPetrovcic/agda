record Fun : Set₁ where
   field
     _⇒_ : Set → Set → Set
     K : Set

id : ∀{A : Set} → A → A
id x = x

variable
  F : Set

module R (E : Set) where
  module Param (fun : Fun) (open Fun fun) where

   test : ∀{A} → E → A ⇒ A
   test = {!aux!} -- C-c C-h

   test₂ : K → K
   test₂ k = {! id' (id k) !} -- C-c C-h

   test₃ : {A : Set} → A → A
   test₃ k = {! id'' ? !} -- C-c C-h

   test₄ : F → K → F
   test₄ = {! id''' !} -- C-c C-h