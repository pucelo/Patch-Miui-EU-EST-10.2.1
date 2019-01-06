.class public Lmiui/maml/data/SensorBinder;
.super Lmiui/maml/data/VariableBinder;
.source "SensorBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/SensorBinder$Variable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SensorBinder"

.field private static final SENSOR_TYPES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG_NAME:Ljava/lang/String; = "SensorBinder"

.field private static mSensorManager:Landroid/hardware/SensorManager;


# instance fields
.field private mEnable:Z

.field private mEnableExp:Lmiui/maml/data/Expression;

.field private mRate:I

.field private mRegistered:Z

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/maml/data/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    sget-object v0, Lmiui/maml/data/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    const-string/jumbo v1, "orientation"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/data/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    const-string/jumbo v1, "gravity"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/data/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    const-string/jumbo v1, "accelerometer"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/data/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    const-string/jumbo v1, "linear_acceleration"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/data/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    const-string/jumbo v1, "pressure"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/data/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    const-string/jumbo v1, "proximity"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/data/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    const-string/jumbo v1, "light"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/data/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    const-string/jumbo v1, "gyroscope"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/SensorBinder;->mType:Ljava/lang/String;

    const-string/jumbo v0, "rate"

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/data/SensorBinder;->mRate:I

    invoke-virtual {p0}, Lmiui/maml/data/SensorBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "enable"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/SensorBinder;->mEnableExp:Lmiui/maml/data/Expression;

    sget-object v0, Lmiui/maml/data/SensorBinder;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_3c

    invoke-virtual {p0}, Lmiui/maml/data/SensorBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lmiui/maml/data/SensorBinder;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_3c
    sget-object v0, Lmiui/maml/data/SensorBinder;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/maml/data/SensorBinder;->mType:Ljava/lang/String;

    invoke-direct {p0, v1}, Lmiui/maml/data/SensorBinder;->getSensorType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/SensorBinder;->mSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lmiui/maml/data/SensorBinder;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_6b

    const-string/jumbo v0, "SensorBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fail to get sensor! TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/SensorBinder;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6b
    new-instance v0, Lmiui/maml/data/SensorBinder$1;

    invoke-direct {v0, p0}, Lmiui/maml/data/SensorBinder$1;-><init>(Lmiui/maml/data/SensorBinder;)V

    iput-object v0, p0, Lmiui/maml/data/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p0, p1}, Lmiui/maml/data/SensorBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private getSensorType(Ljava/lang/String;)I
    .registers 5

    sget-object v2, Lmiui/maml/data/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :cond_f
    :try_start_f
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_12} :catch_14

    move-result v2

    return v2

    :catch_14
    move-exception v0

    const/4 v2, 0x0

    return v2
.end method

.method private registerListener()V
    .registers 5

    iget-boolean v0, p0, Lmiui/maml/data/SensorBinder;->mRegistered:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lmiui/maml/data/SensorBinder;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-boolean v0, p0, Lmiui/maml/data/SensorBinder;->mEnable:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_8

    sget-object v0, Lmiui/maml/data/SensorBinder;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/maml/data/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lmiui/maml/data/SensorBinder;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lmiui/maml/data/SensorBinder;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/SensorBinder;->mRegistered:Z

    return-void
.end method

.method private unregisterListener()V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/data/SensorBinder;->mRegistered:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lmiui/maml/data/SensorBinder;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    sget-object v0, Lmiui/maml/data/SensorBinder;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/maml/data/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lmiui/maml/data/SensorBinder;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/SensorBinder;->mRegistered:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/data/SensorBinder;->unregisterListener()V

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->finish()V

    return-void
.end method

.method public init()V
    .registers 7

    const/4 v0, 0x1

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->init()V

    iget-object v1, p0, Lmiui/maml/data/SensorBinder;->mEnableExp:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lmiui/maml/data/SensorBinder;->mEnableExp:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1a

    :cond_14
    :goto_14
    iput-boolean v0, p0, Lmiui/maml/data/SensorBinder;->mEnable:Z

    invoke-direct {p0}, Lmiui/maml/data/SensorBinder;->registerListener()V

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/SensorBinder$Variable;
    .registers 4

    new-instance v0, Lmiui/maml/data/SensorBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/SensorBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/SensorBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .registers 3

    invoke-virtual {p0, p1}, Lmiui/maml/data/SensorBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/SensorBinder$Variable;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->pause()V

    invoke-direct {p0}, Lmiui/maml/data/SensorBinder;->unregisterListener()V

    return-void
.end method

.method public resume()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->resume()V

    invoke-direct {p0}, Lmiui/maml/data/SensorBinder;->registerListener()V

    return-void
.end method
