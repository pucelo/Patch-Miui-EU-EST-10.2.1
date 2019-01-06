.class public Lcom/android/systemui/statusbar/ExpandedIcon;
.super Lcom/android/internal/statusbar/StatusBarIcon;
.source "ExpandedIcon.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 7

    iget-object v1, p1, Lcom/android/internal/statusbar/StatusBarIcon;->user:Landroid/os/UserHandle;

    iget-object v2, p1, Lcom/android/internal/statusbar/StatusBarIcon;->pkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    iget v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    iget v5, p1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    iget-object v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    iget-boolean v0, p1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandedIcon;->visible:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandedIcon;->clone()Lcom/android/systemui/statusbar/ExpandedIcon;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/android/systemui/statusbar/ExpandedIcon;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/ExpandedIcon;

    invoke-super {p0}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/ExpandedIcon;-><init>(Lcom/android/internal/statusbar/StatusBarIcon;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandedIcon;->clone()Lcom/android/systemui/statusbar/ExpandedIcon;

    move-result-object v0

    return-object v0
.end method
