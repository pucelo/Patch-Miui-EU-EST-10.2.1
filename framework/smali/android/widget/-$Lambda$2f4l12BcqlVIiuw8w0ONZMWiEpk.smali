.class final synthetic Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 2

    iget-object v0, p0, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/DatePickerCalendarDelegate;

    invoke-virtual {v0}, Landroid/widget/DatePickerCalendarDelegate;->lambda$-android_widget_DatePickerCalendarDelegate_13424()V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 2

    iget-object v0, p0, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/DateTimeView;

    invoke-static {v0}, Landroid/widget/DateTimeView$ReceiverInfo;->lambda$-android_widget_DateTimeView$ReceiverInfo_16933(Landroid/widget/DateTimeView;)V

    return-void
.end method

.method private final synthetic $m$2()V
    .registers 2

    iget-object v0, p0, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->lambda$-android_widget_SearchView$SearchAutoComplete_74041()V

    return-void
.end method

.method private final synthetic $m$3()V
    .registers 2

    iget-object v0, p0, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->lambda$-android_widget_SearchView$SearchAutoComplete_74041()V

    return-void
.end method

.method private final synthetic $m$4()V
    .registers 2

    iget-object v0, p0, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->lambda$-android_widget_SearchView$SearchAutoComplete_74041()V

    return-void
.end method

.method private final synthetic $m$5()V
    .registers 2

    iget-object v0, p0, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->lambda$-android_widget_SearchView$SearchAutoComplete_74041()V

    return-void
.end method

.method private final synthetic $m$6()V
    .registers 2

    iget-object v0, p0, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->-android_widget_SelectionActionModeHelper$TextClassificationAsyncTask-mthref-0()V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->$id:B

    iput-object p2, p0, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->$id:B

    packed-switch v0, :pswitch_data_28

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->$m$1()V

    return-void

    :pswitch_13
    invoke-direct {p0}, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->$m$2()V

    return-void

    :pswitch_17
    invoke-direct {p0}, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->$m$3()V

    return-void

    :pswitch_1b
    invoke-direct {p0}, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->$m$4()V

    return-void

    :pswitch_1f
    invoke-direct {p0}, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->$m$5()V

    return-void

    :pswitch_23
    invoke-direct {p0}, Landroid/widget/-$Lambda$2f4l12BcqlVIiuw8w0ONZMWiEpk;->$m$6()V

    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
    .end packed-switch
.end method
