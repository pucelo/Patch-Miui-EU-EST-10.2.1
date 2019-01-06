.class public Landroid/appwidget/PendingHostUpdate;
.super Ljava/lang/Object;
.source "PendingHostUpdate.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/PendingHostUpdate$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/appwidget/PendingHostUpdate;",
            ">;"
        }
    .end annotation
.end field

.field static final TYPE_PROVIDER_CHANGED:I = 0x1

.field static final TYPE_VIEWS_UPDATE:I = 0x0

.field static final TYPE_VIEW_DATA_CHANGED:I = 0x2


# instance fields
.field final appWidgetId:I

.field final type:I

.field viewId:I

.field views:Landroid/widget/RemoteViews;

.field widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/appwidget/PendingHostUpdate$1;

    invoke-direct {v0}, Landroid/appwidget/PendingHostUpdate$1;-><init>()V

    sput-object v0, Landroid/appwidget/PendingHostUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    iput p2, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    packed-switch v0, :pswitch_data_38

    :cond_14
    :goto_14
    return-void

    :pswitch_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    goto :goto_14

    :pswitch_23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v0, p1}, Landroid/appwidget/AppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    goto :goto_14

    :pswitch_31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/PendingHostUpdate;->viewId:I

    goto :goto_14

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_15
        :pswitch_23
        :pswitch_31
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/appwidget/PendingHostUpdate;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/appwidget/PendingHostUpdate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/PendingHostUpdate;
    .registers 4

    new-instance v0, Landroid/appwidget/PendingHostUpdate;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/appwidget/PendingHostUpdate;-><init>(II)V

    iput-object p1, v0, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method public static updateAppWidget(ILandroid/widget/RemoteViews;)Landroid/appwidget/PendingHostUpdate;
    .registers 4

    new-instance v0, Landroid/appwidget/PendingHostUpdate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/appwidget/PendingHostUpdate;-><init>(II)V

    iput-object p1, v0, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public static viewDataChanged(II)Landroid/appwidget/PendingHostUpdate;
    .registers 4

    new-instance v0, Landroid/appwidget/PendingHostUpdate;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/appwidget/PendingHostUpdate;-><init>(II)V

    iput p1, v0, Landroid/appwidget/PendingHostUpdate;->viewId:I

    return-object v0
.end method

.method private writeNullParcelable(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
    .registers 5

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1, p2, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    packed-switch v0, :pswitch_data_22

    :goto_f
    return-void

    :pswitch_10
    iget-object v0, p0, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0, p1, p2}, Landroid/appwidget/PendingHostUpdate;->writeNullParcelable(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    goto :goto_f

    :pswitch_16
    iget-object v0, p0, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0, v0, p1, p2}, Landroid/appwidget/PendingHostUpdate;->writeNullParcelable(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    goto :goto_f

    :pswitch_1c
    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_10
        :pswitch_16
        :pswitch_1c
    .end packed-switch
.end method
