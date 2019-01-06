.class Lmiui/maml/data/SensorBinder$1;
.super Ljava/lang/Object;
.source "SensorBinder.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/data/SensorBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/data/SensorBinder;


# direct methods
.method constructor <init>(Lmiui/maml/data/SensorBinder;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/data/SensorBinder$1;->this$0:Lmiui/maml/data/SensorBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v4

    iget-object v4, p0, Lmiui/maml/data/SensorBinder$1;->this$0:Lmiui/maml/data/SensorBinder;

    iget-object v4, v4, Lmiui/maml/data/SensorBinder;->mVariables:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/VariableBinder$Variable;

    move-object v3, v1

    check-cast v3, Lmiui/maml/data/SensorBinder$Variable;

    iget v4, v3, Lmiui/maml/data/SensorBinder$Variable;->mIndex:I

    if-ltz v4, :cond_b

    iget v4, v3, Lmiui/maml/data/SensorBinder$Variable;->mIndex:I

    if-ge v4, v0, :cond_b

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    iget v5, v3, Lmiui/maml/data/SensorBinder$Variable;->mIndex:I

    aget v4, v4, v5

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lmiui/maml/data/SensorBinder$Variable;->set(D)V

    goto :goto_b

    :cond_2d
    iget-object v4, p0, Lmiui/maml/data/SensorBinder$1;->this$0:Lmiui/maml/data/SensorBinder;

    invoke-virtual {v4}, Lmiui/maml/data/SensorBinder;->onUpdateComplete()V

    return-void
.end method
