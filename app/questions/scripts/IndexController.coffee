angular
  .module('questions')
  .controller 'IndexController', ($scope, supersonic) ->

    $scope.current        = 1
    $scope.totalQuestions = 76
    $scope.options        = duration: 0.3 ; curve: "linear"
    $scope.questions      = {
      1: "Thanks for doing the dishes."
      2: "Thanks for making dinner. It was delicious."
      3: "Thanks for cleaning up the kitchen."
      4: "Thanks for doing the laundry."
      5: "Thanks for supporting me when I talked about my [fill in the blank]."
      6: "Thanks for taking care of the kids."
      7: "Thanks for being such a great dad. [Give example]"
      8: "Thanks for being such a great mom.  [Give example]"
      9: "I really appreciated your giving me a hug."
      10: "Thanks for listening to how my day went."
      11: "I really appreciated you being so affectionate lately. [Give example]"
      12: "I really enjoyed the conversation at dinner."
      13: "Taking a walk together was really nice."
      14: "Thanks for being understanding when I talked about that difficult person I met."
      15: "I enjoyed making love to you."
      16: "I want to thank you for the card and the great words on it."
      17: "Thanks for bringing me flowers."
      18: "That gift was terrific."
      19: "You look great in that."
      20: "Thanks for spending time with me."
      21: "Thank you for caring about what I need."
      22: "That is a fantastic color on you."
      23: "Thanks for spending time with me. [Give example of what you did]"
      24: "Thanks for making me feel like I come first in your life."
      25: "I am really proud of you. [Give example]"
      26: "I have so much respect for you. [Give example]"
      27: "It matters to me a lot when you are so great with the kids. [Give example]"
      28: "The way you treat my family means a lot to me. [Give example]"
      29: "Thanks for putting on music that I love."
      30: "Thanks for putting up with [fill in the blank with an obnoxious friend or relative’s name]."
      31: "Thank you for desiring me."
      32: "Thanks for calling my mother."
      33: "Thank you for just being there when I felt sad."
      34: "Thanks for all the driving you are doing."
      35: "You taste delicious."
      36: "Thank you for listening to me."
      37: "Thanks for calling the plumber (electrician, handyman, carpenter, gardener, etc.)"
      38: "Thank you for taking me out to dinner. That was great."
      39: "Thanks for taking a bath with me."
      40: "Thank you for comforting me."
      41: "I had fun at the party. Thank you for being with me."
      42: "Thank you for being empathetic with me."
      43: "Thanks for taking the kids to the pediatrician."
      44: "Thanks for lighting candles."
      45: "Thank you for being gentle with me."
      46: "Thank you for being on my side."
      47: "Thank you for inviting our friends over."
      48: "Thank you for laughter."
      49: "Thank you for telling me what you need."
      50: "You are a great kisser."
      51: "Thanks for spending time with the kids."
      52: "Thanks for saving money for us."
      53: "It was fun playing cards. Thank you."
      54: "Thank you for last weekend."
      55: "Thank you for holding me."
      56: "I loved the picnic we had."
      57: "Thanks for taking care of me when I was sick."
      58: "Thanks for giving me some time to myself."
      59: "I really appreciate that drive we took."
      60: "Thanks for taking over the chores. [Give example]"
      61: "I really appreciate how great you look tonight as we get ready for bed."
      62: "I can hardly take my hands off you."
      63: "Thank you for greeting me so warmly when I come home."
      64: "Thanks for making our home so beautiful."
      65: "Thanks for making coffee for me."
      66: "Thank you for telling me how you feel."
      67: "You smell so good."
      68: "Thank you for loving me."
      69: "Thanks for spending time with my family."
      70: "I love touching you here. [Give more detail]"
      71: "I appreciate what a loyal partner you are."
      72: "Thanks for sticking up for me when I got criticized. [Give example]"
      73: "Thanks for the way you handled that teacher conference."
      74: "Those pastries were delicious. Thanks for getting them."
      75: "Thanks for calling the doctor when I needed an appointment."
      76: "Thanks for the way you are paying the bills."
    }

    $scope.previousQuestion = () ->
      return if $scope.current == 1
      $scope.current -= 1 unless $scope.current == 1
      supersonic.ui.animate("slideFromLeft", $scope.options).perform()

    $scope.nextQuestion = () ->
      return if $scope.current == $scope.totalQuestions
      $scope.current += 1 unless $scope.current == $scope.totalQuestions
      supersonic.ui.animate("slideFromRight", $scope.options).perform()

    $scope.currentQuestion = () -> $scope.questions[$scope.current]

    $scope.resetQuestions = () ->
      return if $scope.current == 1
      $scope.current = 1
      supersonic.ui.animate("slideFromLeft", $scope.options).perform()