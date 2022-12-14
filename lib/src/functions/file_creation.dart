import 'dart:io';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:wqi_program/src/models/result_model.dart';
//import 'package:wqi_program/src/datas/result_data.dart';

createFile(rawData) async {
  final data = ProResultModel.fromJson(rawData);
  final pdf = pw.Document();

  pdf.addPage(pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return [
          pw.Center(
            child: pw.Column(
              children: [
                headerText(
                    "Calculation of sub-indices, WQI and class for water samples"),
                pw.SizedBox(
                  height: 15,
                ),
                pw.Table(
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      headerText("Sample Code"),
                      headerText("∑ Wiqi"),
                      headerText("WQI"),
                      headerText("Class"),
                    ]),
                    ...data.valuesModel.map((r) {
                      final status = r.resultModel.waterQualityIndex <= 25
                          ? "Excellent"
                          : (r.resultModel.waterQualityIndex > 25 &&
                                  r.resultModel.waterQualityIndex <= 50)
                              ? "Good"
                              : (r.resultModel.waterQualityIndex > 50 &&
                                      r.resultModel.waterQualityIndex <= 75)
                                  ? "Poor"
                                  : (r.resultModel.waterQualityIndex > 75 &&
                                          r.resultModel.waterQualityIndex <=
                                              100)
                                      ? "Very poor"
                                      : r.resultModel.waterQualityIndex > 100
                                          ? "Unsuitable for drinking"
                                          : "Invalid value";
                      return pw.TableRow(children: [
                        bodyText(r.sampleName),
                        bodyText("${r.resultModel.sumofSubIndex}"),
                        bodyText("${r.resultModel.waterQualityIndex}"),
                        bodyText(status),
                      ]);
                    }),
                  ],
                ),
                pw.SizedBox(
                  height: 25,
                ),
                headerText("Ionic ratio values"),
                pw.SizedBox(
                  height: 15,
                ),
                pw.Table(
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      headerText("SAMPLES", reduceFont: true),
                      ...List.generate(
                          data.valuesModel
                              .map((e) => e.resultModel.ionicRatioModel.length)
                              .first, (index) {
                        return headerText(
                            data.valuesModel[0].resultModel
                                .ionicRatioModel[index].name,
                            reduceFont: true);
                      })
                    ]),
                    ...data.valuesModel.map((r) {
                      return pw.TableRow(children: [
                        bodyText(r.sampleName),
                        ...List.generate(
                            data.valuesModel
                                .map(
                                    (e) => e.resultModel.ionicRatioModel.length)
                                .first, (index) {
                          // log("aa ${data.valuesModel.map((e) => e.resultModel.ionicRatioModel.length).first}");
                          // log("bb ${data.valuesModel[0].resultModel.ionicRatioModel.length}");
                          return bodyText(
                              "${r.resultModel.ionicRatioModel[index].value}");
                        })
                      ]);
                    }),
                  ],
                ),
                pw.SizedBox(
                  height: 25,
                ),
                headerText("Result of Irrigation Use"),
                pw.SizedBox(
                  height: 15,
                ),
                pw.Table(
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      headerText("SAMPLES"),
                      ...List.generate(
                          data.valuesModel
                              .map((e) =>
                                  e.resultModel.irrigationUseModel.length)
                              .first, (index) {
                        // log("aa ${data.valuesModel.map((e) => e.resultModel.ionicRatioModel.length).first}");
                        // log("bb ${data.valuesModel[0].resultModel.ionicRatioModel.length}");
                        return headerText(data.valuesModel[0].resultModel
                            .irrigationUseModel[index].name);
                      })
                    ]),
                    ...data.valuesModel.map((r) {
                      return pw.TableRow(children: [
                        bodyText(r.sampleName),
                        ...List.generate(
                            data.valuesModel
                                .map((e) =>
                                    e.resultModel.irrigationUseModel.length)
                                .first, (index) {
                          // log("aa ${data.valuesModel.map((e) => e.resultModel.ionicRatioModel.length).first}");
                          // log("bb ${data.valuesModel[0].resultModel.ionicRatioModel.length}");
                          return bodyText(
                              "${r.resultModel.irrigationUseModel[index].value}");
                        })
                      ]);
                    }),
                  ],
                ),
                pw.SizedBox(
                  height: 25,
                ),
                headerText(
                    "Result of geochemical indices for analyzed water samples"),
                pw.SizedBox(
                  height: 15,
                ),
                pw.Table(
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      headerText("Sample Code"),
                      ...List.generate(
                          data.valuesModel
                              .map((e) =>
                                  e.resultModel.geoChemicalIndicesModel.length)
                              .first, (index) {
                        return bodyText(data.valuesModel[0].resultModel
                            .geoChemicalIndicesModel[index].name);
                      })
                    ]),
                    ...data.valuesModel.map((r) {
                      return pw.TableRow(children: [
                        bodyText(r.sampleName),
                        ...List.generate(
                            data.valuesModel
                                .map((e) => e
                                    .resultModel.geoChemicalIndicesModel.length)
                                .first, (index) {
                          return bodyText(
                              "${r.resultModel.geoChemicalIndicesModel[index].value}");
                        })
                      ]);
                    }),
                  ],
                ),
                pw.SizedBox(
                  height: 25,
                ),
                headerText("Result of Industrail Use"),
                pw.SizedBox(
                  height: 15,
                ),
                pw.Table(
                  border: pw.TableBorder.all(color: PdfColors.black),
                  children: [
                    pw.TableRow(children: [
                      headerText("Sample Code"),
                      ...List.generate(
                          data.valuesModel
                              .map((e) =>
                                  e.resultModel.industrialUseModel.length)
                              .first, (index) {
                        return bodyText(data.valuesModel[0].resultModel
                            .industrialUseModel[index].name);
                      })
                    ]),
                    ...data.valuesModel.map((r) {
                      return pw.TableRow(children: [
                        bodyText(r.sampleName),
                        ...List.generate(
                            data.valuesModel
                                .map((e) =>
                                    e.resultModel.industrialUseModel.length)
                                .first, (index) {
                          return bodyText(
                              "${r.resultModel.industrialUseModel[index].value}");
                        })
                      ]);
                    }),
                  ],
                ),
              ],
            ),
          )
        ]; // pw.Center
      })); // Page

  final pdfFile = File("result.pdf");
  await pdfFile.writeAsBytes(await pdf.save());
}

pw.Center headerText(String text, {bool reduceFont = false}) {
  return pw.Center(
      child:
          pw.Text(text, style: pw.TextStyle(fontSize: reduceFont ? 10 : 15)));
}

pw.Center bodyText(
  String text,
) {
  return pw.Center(
      child: pw.Text(text,
          style: pw.TextStyle(fontSize: 10, fontWeight: pw.FontWeight.normal)));
}
