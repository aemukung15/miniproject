class StepModel {
  int? id;
  String? stepId;
  String? name;
  String? detail;
  String? stepImage;
  String? muscleImage;
  String? createdAt;
  String? updatedAt;

  StepModel({
    this.id,
    this.stepId,
    this.name,
    this.detail,
    this.stepImage,
    this.muscleImage,
    this.createdAt,
    this.updatedAt,
  });

  StepModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    stepId = json['step_id'];
    name = json['name'];
    detail = json['detail'];
    stepImage = json['step_image'];
    muscleImage = json['muscle_image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals, unnecessary_new
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['step_id'] = stepId;
    data['name'] = name;
    data['detail'] = detail;
    data['step_image'] = stepImage;
    data['muscle_image'] = muscleImage;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
