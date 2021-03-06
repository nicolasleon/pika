import SwiftUI

struct ComplianceToggle: View {
    var title: String
    var isCompliant: Bool
    var tooltip: String

    var body: some View {
        HStack(spacing: 2.0) {
            IconImage(name: isCompliant ? "checkmark.circle.fill" : "xmark.circle")
                .opacity(isCompliant ? 1.0 : 0.4)
            Text(title)
        }
        .opacity(isCompliant ? 1.0 : 0.4)
        .modify {
            if #available(OSX 11.0, *) {
                $0.help(tooltip)
            } else {
                $0
            }
        }
    }
}

struct ComplianceToggle_Previews: PreviewProvider {
    static var previews: some View {
        ComplianceToggle(title: "AA", isCompliant: true, tooltip: "Help text")
    }
}
