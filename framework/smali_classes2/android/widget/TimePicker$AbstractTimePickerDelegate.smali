.class abstract Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/widget/TimePicker$TimePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractTimePickerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    }
.end annotation


# instance fields
.field protected mAutoFillChangeListener:Landroid/widget/TimePicker$OnTimeChangedListener;

.field private mAutofilledValue:J

.field protected final mContext:Landroid/content/Context;

.field protected final mDelegator:Landroid/widget/TimePicker;

.field protected final mLocale:Ljava/util/Locale;

.field protected mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;


# direct methods
.method public constructor <init>(Landroid/widget/TimePicker;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    iput-object p2, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final autofill(Landroid/view/autofill/AutofillValue;)V
    .registers 8

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2a

    :cond_a
    invoke-static {}, Landroid/widget/TimePicker;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " could not be autofilled into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2a
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getDateValue()J

    move-result-wide v2

    iget-object v1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0, v1, v4}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->setDate(II)V

    iput-wide v2, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mAutofilledValue:J

    return-void
.end method

.method public final getAutofillValue()Landroid/view/autofill/AutofillValue;
    .registers 7

    iget-wide v2, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mAutofilledValue:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_f

    iget-wide v2, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mAutofilledValue:J

    invoke-static {v2, v3}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    return-object v1

    :cond_f
    iget-object v1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->getHour()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {p0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->getMinute()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    return-object v1
.end method

.method protected resetAutofilledValue()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mAutofilledValue:J

    return-void
.end method

.method public setAutoFillChangeListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mAutoFillChangeListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method
