(defun fuel (mass)
  (- (floor (/ mass 3)) 2))

(defun day01-part1 (input-file)
  (with-open-file (stream input-file)
    (loop for mass = (read stream nil nil)
          while mass
          sum (fuel mass))))

(day01-part1 "01input.txt")

(defun fuel* (mass)
  (loop for fuel-mass = (fuel mass) then (fuel fuel-mass)
        while (>= fuel-mass 0)
        sum fuel-mass))

(defun day01-part2 (input-file)
  (with-open-file (stream input-file)
    (loop for mass = (read stream nil nil)
          while mass
          sum (fuel* mass))))

(day01-part2 "01input.txt")
