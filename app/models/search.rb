class Search < ActiveRecord::Base
  def strokes
    @strokes ||= find_strokes
  end

  def find_strokes
    strokes = Stroke.order(:shot)
    strokes = strokes.where(shot: shot)
    strokes = strokes.where(handedness: handedness) if handedness.present?
    strokes = strokes.where(grip: grip) if grip.present?
    strokes = strokes.where(spin: spin) if spin.present?
    strokes
  end
end
