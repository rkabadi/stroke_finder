class Search < ActiveRecord::Base
  def strokes
    @strokes ||= find_strokes
  end

  def find_strokes
    strokes = Stroke.order(:shot_id)
    strokes = strokes.where(strokes.include? name)
    strokes = strokes.where(shot_id: shot_id) if shot_id.present?
    strokes = strokes.where(hand_id: hand_id) if hand_id.present?
    strokes = strokes.where(grip_id: grip_id) if grip_id.present?
    strokes = strokes.where(spin_id: spin_id) if spin_id.present?
    strokes
  end
end
