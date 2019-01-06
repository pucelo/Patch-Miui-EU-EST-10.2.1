.class public Landroid/text/style/AccessibilityClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "AccessibilityClickableSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/style/AccessibilityClickableSpan$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/text/style/AccessibilityClickableSpan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnectionId:I

.field private final mOriginalClickableSpanId:I

.field private mSourceNodeId:J

.field private mWindowId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/text/style/AccessibilityClickableSpan$1;

    invoke-direct {v0}, Landroid/text/style/AccessibilityClickableSpan$1;-><init>()V

    sput-object v0, Landroid/text/style/AccessibilityClickableSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    const/4 v2, -0x1

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput v2, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    iput v2, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    iput p1, p0, Landroid/text/style/AccessibilityClickableSpan;->mOriginalClickableSpanId:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v2, -0x1

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput v2, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    iput v2, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mOriginalClickableSpanId:I

    return-void
.end method


# virtual methods
.method public copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getConnectionId()I

    move-result v0

    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v0

    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public findClickableSpan(Ljava/lang/CharSequence;)Landroid/text/style/ClickableSpan;
    .registers 9

    const/4 v6, 0x0

    instance-of v3, p1, Landroid/text/Spanned;

    if-nez v3, :cond_6

    return-object v6

    :cond_6
    move-object v2, p1

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroid/text/style/ClickableSpan;

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ClickableSpan;

    const/4 v0, 0x0

    :goto_17
    array-length v3, v1

    if-ge v0, v3, :cond_2a

    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/text/style/ClickableSpan;->getId()I

    move-result v3

    iget v4, p0, Landroid/text/style/AccessibilityClickableSpan;->mOriginalClickableSpanId:I

    if-ne v3, v4, :cond_27

    aget-object v3, v1, v0

    return-object v3

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2a
    return-object v6
.end method

.method public getSpanTypeId()I
    .registers 2

    invoke-virtual {p0}, Landroid/text/style/AccessibilityClickableSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .registers 2

    const/16 v0, 0x19

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10

    const/4 v6, -0x1

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "android.view.accessibility.action.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN"

    invoke-virtual {v7, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    if-eq v0, v6, :cond_18

    iget-wide v2, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_21

    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "ClickableSpan for accessibility service not properly initialized"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iget v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    if-eq v0, v6, :cond_18

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    iget v3, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    iget-wide v4, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    const v6, 0x102016c

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/text/style/AccessibilityClickableSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mOriginalClickableSpanId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
