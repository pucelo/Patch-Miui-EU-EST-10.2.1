.class public Lmiui/maml/ScreenElementRoot;
.super Lmiui/maml/elements/ScreenElement;
.source "ScreenElementRoot.java"

# interfaces
.implements Lmiui/maml/InteractiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ScreenElementRoot$ExtraResource;,
        Lmiui/maml/ScreenElementRoot$FramerateHelper;,
        Lmiui/maml/ScreenElementRoot$InnerGroup;,
        Lmiui/maml/ScreenElementRoot$OnExternCommandListener;,
        Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;
    }
.end annotation


# static fields
.field private static final CALCULATE_FRAME_RATE:Z = true

.field public static final CAPABILITY_ALL:I = -0x1

.field public static final CAPABILITY_CREATE_OBJ:I = 0x4

.field public static final CAPABILITY_VAR_PERSISTENCE:I = 0x2

.field public static final CAPABILITY_WEBSERVICE:I = 0x1

.field private static final DEFAULT_RES_DENSITY:I = 0xf0

.field private static final DEFAULT_SCREEN_WIDTH:I = 0x1e0

.field private static final EXTERNAL_COMMANDS_TAG_NAME:Ljava/lang/String; = "ExternalCommands"

.field private static final LOG_TAG:Ljava/lang/String; = "ScreenElementRoot"

.field private static final MAML_VERSION:I = 0x4

.field private static final MIUI_VERSION_CODE:Ljava/lang/String; = "ro.miui.ui.version.code"

.field private static final MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final RAW_DENSITY:Ljava/lang/String; = "__raw_density"

.field private static final ROOT_NAME:Ljava/lang/String; = "__root"

.field private static final SCALE_FACTOR:Ljava/lang/String; = "__scale_factor"

.field private static final THEMEMANAGER_PACKAGE_NAME:Ljava/lang/String; = "com.android.thememanager"

.field private static final VARIABLE_VIEW_HEIGHT:Ljava/lang/String; = "view_height"

.field private static final VARIABLE_VIEW_WIDTH:Ljava/lang/String; = "view_width"

.field private static final VAR_MAML_VERSION:Ljava/lang/String; = "__maml_version"


# instance fields
.field protected DEFAULT_FRAME_RATE:F

.field private mAccessibleElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/maml/elements/AnimatedScreenElement;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowScreenRotation:Z

.field private mBgColor:I

.field private mCacheDir:Ljava/lang/String;

.field private mCapability:I

.field private mCheckPoint:J

.field private mClearCanvas:Z

.field private mConfig:Lmiui/maml/util/ConfigFile;

.field private mConfigPath:Ljava/lang/String;

.field protected mContext:Lmiui/maml/ScreenContext;

.field protected mController:Lmiui/maml/RendererController;

.field private mDefaultResourceDensity:I

.field private mDefaultScreenWidth:I

.field private mExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/maml/ScreenElementRoot$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalCommandManager:Lmiui/maml/CommandTriggers;

.field private mFinished:Z

.field private mFontScale:F

.field protected mFrameRate:F

.field private mFrameRateVar:Lmiui/maml/data/IndexedVariable;

.field private mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

.field private mFrames:I

.field private mHeight:F

.field private mHoverChangeListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

.field private mHoverMatrix:Landroid/graphics/Matrix;

.field protected mInnerGroup:Lmiui/maml/elements/ElementGroup;

.field private mKeepResource:Z

.field private mNeedDisallowInterceptTouchEvent:Z

.field private mNeedDisallowInterceptTouchEventVar:Lmiui/maml/data/IndexedVariable;

.field private mNeedReset:Z

.field private mPreTickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ITicker;",
            ">;"
        }
    .end annotation
.end field

.field protected mRawAttrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRawDefaultResourceDensity:I

.field private mRawHeight:I

.field private mRawTargetDensity:I

.field private mRawWidth:I

.field private mRendererControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/RendererController;",
            ">;"
        }
    .end annotation
.end field

.field private mRootTag:Ljava/lang/String;

.field private mScale:F

.field private mScaleByDensity:Z

.field public mShowDebugLayout:Z

.field private mShowFramerate:Z

.field private mSoundManager:Lmiui/maml/SoundManager;

.field private mStylesManager:Lmiui/maml/StylesManager;

.field private mSystemExternCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

.field private mTargetDensity:I

.field protected mTargetScreenHeight:I

.field protected mTargetScreenWidth:I

.field private mTouchBeginTime:Lmiui/maml/data/IndexedVariable;

.field private mTouchBeginX:Lmiui/maml/data/IndexedVariable;

.field private mTouchBeginY:Lmiui/maml/data/IndexedVariable;

.field private mTouchX:Lmiui/maml/data/IndexedVariable;

.field private mTouchY:Lmiui/maml/data/IndexedVariable;

.field protected mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

.field private mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

.field private mVersion:I

.field private mViewManager:Landroid/view/ViewManager;

.field private mWidth:F


# direct methods
.method static synthetic -get0(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/CommandTriggers;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/maml/ScreenElementRoot;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>(Lmiui/maml/ScreenContext;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v0}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    new-instance v0, Lmiui/maml/ScreenElementRoot$FramerateHelper;

    invoke-direct {v0}, Lmiui/maml/ScreenElementRoot$FramerateHelper;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mCapability:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    iput-object p0, p0, Lmiui/maml/ScreenElementRoot;->mRoot:Lmiui/maml/ScreenElementRoot;

    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    new-instance v0, Lmiui/maml/data/VariableUpdaterManager;

    invoke-direct {v0, p0}, Lmiui/maml/data/VariableUpdaterManager;-><init>(Lmiui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v1, "touch_x"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchX:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v1, "touch_y"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchY:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v1, "touch_begin_x"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginX:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v1, "touch_begin_y"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginY:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v1, "touch_begin_time"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginTime:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v1, "intercept_sys_touch"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/SoundManager;

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-direct {v0, v1}, Lmiui/maml/SoundManager;-><init>(Lmiui/maml/ScreenContext;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    new-instance v0, Lmiui/maml/SystemCommandListener;

    invoke-direct {v0, p0}, Lmiui/maml/SystemCommandListener;-><init>(Lmiui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSystemExternCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    return-void
.end method

.method private loadConfig(Ljava/lang/String;)V
    .registers 13

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v8, Lmiui/maml/util/ConfigFile;

    invoke-direct {v8}, Lmiui/maml/util/ConfigFile;-><init>()V

    iput-object v8, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v8, p1}, Lmiui/maml/util/ConfigFile;->load(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1f

    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v8, v8, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v8}, Lmiui/maml/ResourceManager;->getConfigRoot()Lorg/w3c/dom/Element;

    move-result-object v3

    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v8, v3}, Lmiui/maml/util/ConfigFile;->loadDefaultSettings(Lorg/w3c/dom/Element;)V

    :cond_1f
    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v8}, Lmiui/maml/util/ConfigFile;->getVariables()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_29
    :goto_29
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_69

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/util/ConfigFile$Variable;

    iget-object v8, v6, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string/jumbo v9, "string"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4c

    iget-object v8, v6, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v9, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v9, v9, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget-object v10, v6, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    goto :goto_29

    :cond_4c
    iget-object v8, v6, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string/jumbo v9, "number"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_29

    :try_start_57
    iget-object v8, v6, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v8, v6, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v9, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v9, v9, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {v8, v9, v0, v1}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V
    :try_end_66
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_66} :catch_67

    goto :goto_29

    :catch_67
    move-exception v2

    goto :goto_29

    :cond_69
    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v8}, Lmiui/maml/util/ConfigFile;->getTasks()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_73
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_dd

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/util/Task;

    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v8, v8, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v4, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".name"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v4, Lmiui/maml/util/Task;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v8, v8, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v4, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".package"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v4, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v8, v8, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v4, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".class"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v4, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_73

    :cond_dd
    return-void
.end method

.method private loadRawAttrs(Lorg/w3c/dom/Element;)V
    .registers 8

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const/4 v0, 0x0

    :goto_5
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_1f

    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1f
    return-void
.end method

.method private processUseVariableUpdater(Lorg/w3c/dom/Element;)V
    .registers 4

    const-string/jumbo v1, "useVariableUpdater"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {p0, v1}, Lmiui/maml/ScreenElementRoot;->onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V

    :goto_12
    return-void

    :cond_13
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v1, v0}, Lmiui/maml/data/VariableUpdaterManager;->addFromTag(Ljava/lang/String;)V

    goto :goto_12
.end method

.method private setupScale(Lorg/w3c/dom/Element;)V
    .registers 23

    const-string/jumbo v18, "scaleByDensity"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1b

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/maml/ScreenElementRoot;->mScaleByDensity:Z

    :cond_1b
    const-string/jumbo v18, "defaultScreenWidth"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v18, v0

    if-nez v18, :cond_4d

    const-string/jumbo v18, "screenWidth"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    :cond_4d
    const-string/jumbo v18, "defaultResourceDensity"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    move/from16 v18, v0

    if-nez v18, :cond_7f

    const-string/jumbo v18, "resDensity"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    :cond_7f
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v18, v0

    if-nez v18, :cond_2d2

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v18, v0

    if-nez v18, :cond_2d2

    const/16 v18, 0x1e0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    const/16 v18, 0xf0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    :cond_af
    :goto_af
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lmiui/maml/ResourceManager;->setDefaultResourceDensity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "window"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v4, v15}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v11

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_f5

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v11, v0, :cond_316

    :cond_f5
    const/4 v10, 0x1

    :goto_f6
    if-eqz v10, :cond_319

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    :goto_fc
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    if-eqz v10, :cond_31f

    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    :goto_108
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v4, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v18, v0

    and-int/lit8 v16, v18, 0xf

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    if-nez v7, :cond_150

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    move/from16 v0, v18

    div-int/lit16 v7, v0, 0x1e0

    :cond_150
    new-instance v9, Lmiui/maml/ScreenElementRoot$ExtraResource;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v7}, Lmiui/maml/ScreenElementRoot$ExtraResource;-><init>(Lorg/w3c/dom/Element;I)V

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-virtual {v9, v0, v1, v2}, Lmiui/maml/ScreenElementRoot$ExtraResource;->findResource(III)Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;

    move-result-object v8

    const-string/jumbo v18, "ScreenElementRoot"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "findResource: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v8, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mDensity:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v8, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScale:F

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    move-object/from16 v18, v0

    iget-object v0, v8, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lmiui/maml/ResourceManager;->setExtraResource(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-virtual {v9, v0, v1, v2}, Lmiui/maml/ScreenElementRoot$ExtraResource;->findScale(III)Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    move-result-object v12

    const-string/jumbo v18, "ScreenElementRoot"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "findScale: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/maml/ScreenElementRoot;->mScaleByDensity:Z

    move/from16 v18, v0

    if-eqz v18, :cond_34d

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    iget v0, v12, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_325

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mScale:F

    :cond_22e
    :goto_22e
    const-string/jumbo v18, "ScreenElementRoot"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "set scale: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mScale:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lmiui/maml/ResourceManager;->setTargetDensity(I)V

    const-string/jumbo v18, "width"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    const-string/jumbo v18, "height"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mWidth:F

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mHeight:F

    return-void

    :cond_2d2
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v18, v0

    if-nez v18, :cond_2f4

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x1e0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    goto/16 :goto_af

    :cond_2f4
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v18, v0

    if-nez v18, :cond_af

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v18, v0

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x1e0

    move/from16 v18, v0

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    goto/16 :goto_af

    :cond_316
    const/4 v10, 0x0

    goto/16 :goto_f6

    :cond_319
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    goto/16 :goto_fc

    :cond_31f
    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    goto/16 :goto_108

    :cond_325
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    iget v0, v12, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v14, v18, v19

    iget v0, v12, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    move/from16 v18, v0

    mul-float v18, v18, v14

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mScale:F

    goto/16 :goto_22e

    :cond_34d
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mScale:F

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    iget v0, v12, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_22e

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    iget v0, v12, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v14, v18, v19

    iget v0, v12, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    move/from16 v18, v0

    mul-float v18, v18, v14

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/ScreenElementRoot;->mScale:F

    goto/16 :goto_22e
.end method

.method private traverseElements()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lmiui/maml/ScreenElementRoot$1;

    invoke-direct {v0, p0}, Lmiui/maml/ScreenElementRoot$1;-><init>(Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    return-void
.end method


# virtual methods
.method public acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V
    .registers 3

    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ElementGroup;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    return-void
.end method

.method public addAccessibleElements(Lmiui/maml/elements/AnimatedScreenElement;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPreTicker(Lmiui/maml/elements/ITicker;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allowScreenRotation()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    return v0
.end method

.method public attachToRenderThread(Lmiui/maml/RenderThread;)V
    .registers 6

    if-eqz p1, :cond_6

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    if-nez v2, :cond_f

    :cond_6
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "thread or controller is null, MUST load before attaching"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_26

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    invoke-virtual {p1, v2}, Lmiui/maml/RenderThread;->addRendererController(Lmiui/maml/RendererController;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_26
    return-void
.end method

.method public createFramerateToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;
    .registers 3

    invoke-virtual {p0, p1}, Lmiui/maml/ScreenElementRoot;->createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public detachFromRenderThread(Lmiui/maml/RenderThread;)V
    .registers 6

    if-eqz p1, :cond_6

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    if-nez v2, :cond_f

    :cond_6
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "thread or controller is null, MUST load before detaching"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_26

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    invoke-virtual {p1, v2}, Lmiui/maml/RenderThread;->removeRendererController(Lmiui/maml/RendererController;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_26
    return-void
.end method

.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 6

    const/4 v3, 0x0

    iget-boolean v2, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v2, :cond_6

    return-void

    :cond_6
    iget-boolean v2, p0, Lmiui/maml/ScreenElementRoot;->mClearCanvas:Z

    if-eqz v2, :cond_f

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_f
    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mBgColor:I

    if-eqz v2, :cond_18

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mBgColor:I

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_18
    :try_start_18
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v2, p1}, Lmiui/maml/elements/ElementGroup;->render(Landroid/graphics/Canvas;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_41
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_1d} :catch_32

    :goto_1d
    iget-boolean v2, p0, Lmiui/maml/ScreenElementRoot;->mShowFramerate:Z

    if-eqz v2, :cond_26

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

    invoke-virtual {v2, p1}, Lmiui/maml/ScreenElementRoot$FramerateHelper;->draw(Landroid/graphics/Canvas;)V

    :cond_26
    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v2}, Lmiui/maml/RendererController;->doneRender()V

    return-void

    :catch_32
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string/jumbo v2, "ScreenElementRoot"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method protected doTick(J)V
    .registers 16

    iget-boolean v5, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v5, :cond_5

    return-void

    :cond_5
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v5}, Lmiui/maml/data/VariableBinderManager;->tick()V

    :cond_e
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/data/VariableUpdaterManager;->tick(J)V

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_2a

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/elements/ITicker;

    invoke-interface {v5, p1, p2}, Lmiui/maml/elements/ITicker;->tick(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2a
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/ElementGroup;->tick(J)V

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5}, Lmiui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmpl-double v5, v2, v8

    if-lez v5, :cond_60

    const/4 v5, 0x1

    :goto_3c
    iput-boolean v5, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mFrameRateVar:Lmiui/maml/data/IndexedVariable;

    if-nez v5, :cond_55

    new-instance v5, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v8, "frame_rate"

    iget-object v9, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v9, v9, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const/4 v10, 0x1

    invoke-direct {v5, v8, v9, v10}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v5, p0, Lmiui/maml/ScreenElementRoot;->mFrameRateVar:Lmiui/maml/data/IndexedVariable;

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    :cond_55
    iget-wide v8, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_62

    iput-wide p1, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    :cond_5f
    :goto_5f
    return-void

    :cond_60
    const/4 v5, 0x0

    goto :goto_3c

    :cond_62
    iget-wide v8, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    sub-long v6, p1, v8

    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-ltz v5, :cond_5f

    iget v5, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v8, v5

    div-long/2addr v8, v6

    long-to-int v4, v8

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mFramerateHelper:Lmiui/maml/ScreenElementRoot$FramerateHelper;

    invoke-virtual {v5, v4}, Lmiui/maml/ScreenElementRoot$FramerateHelper;->set(I)V

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mFrameRateVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v8, v4

    invoke-virtual {v5, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    const/4 v5, 0x0

    iput v5, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    iput-wide p1, p0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    goto :goto_5f
.end method

.method public doneRender()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->doneRender()V

    return-void
.end method

.method public findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0, p1}, Lmiui/maml/data/VariableBinderManager;->findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .registers 3

    const-string/jumbo v0, "__root"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-object p0

    :cond_a
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    return-object v0
.end method

.method public findTask(Ljava/lang/String;)Lmiui/maml/util/Task;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v0, p1}, Lmiui/maml/util/ConfigFile;->getTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v0

    goto :goto_5
.end method

.method public finish()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->finish()V

    const-string/jumbo v0, "ScreenElementRoot"

    const-string/jumbo v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    const-string/jumbo v1, "preFinish"

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->finish()V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    const-string/jumbo v1, "finish"

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/util/ConfigFile;->save(Landroid/content/Context;)Z

    :cond_37
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->finish()V

    :cond_40
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->finish()V

    :cond_49
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->finish()V

    :cond_52
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    invoke-virtual {v0}, Lmiui/maml/SoundManager;->release()V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mKeepResource:Z

    invoke-virtual {v0, v1}, Lmiui/maml/ResourceManager;->finish(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mKeepResource:Z

    return-void
.end method

.method public getAccessibleElements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/maml/elements/AnimatedScreenElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    return-object v0
.end method

.method public getCacheDir()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method public getCapability(I)Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mCapability:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public getContext()Lmiui/maml/ScreenContext;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    return-object v0
.end method

.method public getDefaultScreenWidth()I
    .registers 2

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    return v0
.end method

.method public final getFontScale()F
    .registers 2

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mFontScale:F

    return v0
.end method

.method public getHeight()F
    .registers 2

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mHeight:F

    return v0
.end method

.method public getHoverElement()Lmiui/maml/elements/AnimatedScreenElement;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    return-object v0
.end method

.method public getRawAttr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRendererController()Lmiui/maml/RendererController;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    return-object v0
.end method

.method public getResourceDensity()I
    .registers 2

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    return v0
.end method

.method public getRootTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRootTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getScale()F
    .registers 3

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    const-string/jumbo v0, "ScreenElementRoot"

    const-string/jumbo v1, "scale not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_13
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    return v0
.end method

.method public getScreenHeight()I
    .registers 2

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .registers 2

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    return v0
.end method

.method public getStyle(Ljava/lang/String;)Lmiui/maml/StylesManager$Style;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_8
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mStylesManager:Lmiui/maml/StylesManager;

    if-eqz v1, :cond_12

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mStylesManager:Lmiui/maml/StylesManager;

    invoke-virtual {v0, p1}, Lmiui/maml/StylesManager;->getStyle(Ljava/lang/String;)Lmiui/maml/StylesManager$Style;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method public getTargetDensity()I
    .registers 2

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    return v0
.end method

.method public getViewManager()Landroid/view/ViewManager;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mViewManager:Landroid/view/ViewManager;

    return-object v0
.end method

.method public getWidth()F
    .registers 2

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mWidth:F

    return v0
.end method

.method public haptic(I)V
    .registers 2

    return-void
.end method

.method public init()V
    .registers 10

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v3, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const-string/jumbo v5, "__objRoot"

    invoke-virtual {v3, v5, p0}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v5, "__objContext"

    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-virtual {v3, v5, v6}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    const-string/jumbo v5, "ScreenElementRoot"

    const-string/jumbo v6, "init"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lmiui/maml/ScreenElementRoot;->mFrameRate:F

    invoke-virtual {p0, v5}, Lmiui/maml/ScreenElementRoot;->requestFramerate(F)V

    const/4 v5, -0x1

    iput v5, p0, Lmiui/maml/ScreenElementRoot;->mCapability:I

    const-string/jumbo v5, "debug.layout"

    invoke-static {v5, v7}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lmiui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    iput-boolean v7, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v5}, Lmiui/maml/ResourceManager;->init()V

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    iput v5, p0, Lmiui/maml/ScreenElementRoot;->mFontScale:F

    const-string/jumbo v5, "__fontScale"

    iget v6, p0, Lmiui/maml/ScreenElementRoot;->mFontScale:F

    float-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v6, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v7, v7, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {v5, v6, v7}, Lmiui/maml/LanguageHelper;->load(Ljava/util/Locale;Lmiui/maml/ResourceManager;Lmiui/maml/data/Variables;)Z

    const-string/jumbo v5, "raw_screen_width"

    iget v6, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string/jumbo v5, "raw_screen_height"

    iget v6, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string/jumbo v5, "screen_width"

    iget v6, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v6, v6

    iget v7, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string/jumbo v5, "screen_height"

    iget v6, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v6, v6

    iget v7, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget v5, p0, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    if-lez v5, :cond_a7

    const-string/jumbo v5, "view_width"

    iget v6, p0, Lmiui/maml/ScreenElementRoot;->mRawWidth:I

    int-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    :cond_a7
    iget v5, p0, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    if-lez v5, :cond_b4

    const-string/jumbo v5, "view_height"

    iget v6, p0, Lmiui/maml/ScreenElementRoot;->mRawHeight:I

    int-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    :cond_b4
    const-string/jumbo v5, "view_width"

    iget v6, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v6, v6

    iget v7, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string/jumbo v5, "view_height"

    iget v6, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v6, v6

    iget v7, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string/jumbo v5, "__raw_density"

    iget v6, p0, Lmiui/maml/ScreenElementRoot;->mRawTargetDensity:I

    int-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string/jumbo v5, "__scale_factor"

    iget v6, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    float-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string/jumbo v5, "__maml_version"

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    invoke-virtual {v3, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const/4 v4, 0x0

    :try_start_e9
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    if-eqz v5, :cond_109

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_109

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_109

    const-string/jumbo v5, "com.android.thememanager"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_109

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_109} :catch_178

    :cond_109
    :goto_109
    const-string/jumbo v5, "__thememanager_version"

    int-to-double v6, v4

    invoke-virtual {v3, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string/jumbo v5, "__miui_version_name"

    const-string/jumbo v6, "ro.miui.ui.version.name"

    invoke-static {v6}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v5, "__miui_version_code"

    const-string/jumbo v6, "ro.miui.ui.version.code"

    invoke-static {v6}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v5, "__android_version"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v5, "__system_version"

    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->loadConfig()V

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v5, :cond_146

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v5}, Lmiui/maml/data/VariableUpdaterManager;->init()V

    :cond_146
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v5, :cond_14f

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v5}, Lmiui/maml/data/VariableBinderManager;->init()V

    :cond_14f
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v5, :cond_158

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    invoke-virtual {v5}, Lmiui/maml/CommandTriggers;->init()V

    :cond_158
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    const-string/jumbo v6, "init"

    invoke-virtual {v5, v6}, Lmiui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v5}, Lmiui/maml/elements/ElementGroup;->init()V

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    const-string/jumbo v6, "postInit"

    invoke-virtual {v5, v6}, Lmiui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mRoot:Lmiui/maml/ScreenElementRoot;

    iput-object v8, v5, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    const/4 v5, 0x1

    iput-boolean v5, p0, Lmiui/maml/ScreenElementRoot;->mNeedReset:Z

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    return-void

    :catch_178
    move-exception v0

    const-string/jumbo v5, "ScreenElementRoot"

    const-string/jumbo v6, "thememanager not found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_109
.end method

.method public issueExternCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .registers 8

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mSystemExternCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    invoke-interface {v1, p1, p2, p3}, Lmiui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    if-eqz v0, :cond_46

    invoke-interface {v0, p1, p2, p3}, Lmiui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    const-string/jumbo v1, "ScreenElementRoot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "issueExternCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    return-void
.end method

.method public final load()Z
    .registers 15

    const/4 v13, 0x1

    const/4 v12, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v7, v7, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v7}, Lmiui/maml/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v3

    if-nez v3, :cond_11

    return v12

    :cond_11
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmiui/maml/ScreenElementRoot;->mRootTag:Ljava/lang/String;

    invoke-direct {p0, v3}, Lmiui/maml/ScreenElementRoot;->loadRawAttrs(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, v3}, Lmiui/maml/ScreenElementRoot;->processUseVariableUpdater(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, v3}, Lmiui/maml/ScreenElementRoot;->setupScale(Lorg/w3c/dom/Element;)V

    const-string/jumbo v7, "VariableBinders"

    invoke-static {v3, v7}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    new-instance v7, Lmiui/maml/data/VariableBinderManager;

    invoke-direct {v7, v0, p0}, Lmiui/maml/data/VariableBinderManager;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v7, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    const-string/jumbo v7, "ExternalCommands"

    invoke-static {v3, v7}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_3e

    new-instance v7, Lmiui/maml/CommandTriggers;

    invoke-direct {v7, v1, p0}, Lmiui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v7, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    :cond_3e
    const-string/jumbo v7, "Styles"

    invoke-static {v3, v7}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    if-eqz v6, :cond_4e

    new-instance v7, Lmiui/maml/StylesManager;

    invoke-direct {v7, v6}, Lmiui/maml/StylesManager;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v7, p0, Lmiui/maml/ScreenElementRoot;->mStylesManager:Lmiui/maml/StylesManager;

    :cond_4e
    const-string/jumbo v7, "frameRate"

    iget v8, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    invoke-static {v3, v7, v8}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v7

    iput v7, p0, Lmiui/maml/ScreenElementRoot;->mFrameRate:F

    const-string/jumbo v7, "clearCanvas"

    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lmiui/maml/ScreenElementRoot;->mClearCanvas:Z

    const-string/jumbo v7, "allowScreenRotation"

    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lmiui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    new-instance v7, Lmiui/maml/RendererController;

    invoke-direct {v7}, Lmiui/maml/RendererController;-><init>()V

    iput-object v7, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    new-instance v7, Lmiui/maml/ScreenElementRoot$InnerGroup;

    invoke-direct {v7, v3, p0}, Lmiui/maml/ScreenElementRoot$InnerGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v7, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    iget-object v7, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v7}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_97

    const-string/jumbo v7, "ScreenElementRoot"

    const-string/jumbo v8, "load error, no element loaded"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_97
    const-string/jumbo v7, "version"

    const/4 v8, 0x1

    invoke-static {v3, v7, v8}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lmiui/maml/ScreenElementRoot;->mVersion:I

    invoke-virtual {p0, v3}, Lmiui/maml/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    move-result v7

    if-nez v7, :cond_a8

    return v12

    :cond_a8
    invoke-direct {p0}, Lmiui/maml/ScreenElementRoot;->traverseElements()V

    const-string/jumbo v7, "ScreenElementRoot"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "load finished, spent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d1} :catch_d2

    return v13

    :catch_d2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return v12
.end method

.method public loadConfig()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/maml/ScreenElementRoot;->loadConfig(Ljava/lang/String;)V

    return-void
.end method

.method public needDisallowInterceptTouchEvent()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    return v0
.end method

.method protected onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V
    .registers 3

    new-instance v0, Lmiui/maml/data/DateTimeVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/maml/data/DateTimeVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_c

    new-instance v0, Lmiui/maml/ScreenElementRoot$2;

    invoke-direct {v0, p0, p1}, Lmiui/maml/ScreenElementRoot$2;-><init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->postRunnable(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lmiui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "orientationChange"

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_10
    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ElementGroup;->onHover(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public onHoverChange(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mHoverChangeListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mHoverChangeListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;

    :cond_f
    if-eqz v0, :cond_14

    invoke-interface {v0, p2}, Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;->onHoverChange(Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 14

    iget-boolean v5, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    return v5

    :cond_6
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v5, :cond_5c

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v5}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v5}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v0

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v5}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    move-result v5

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v1, v10

    add-float v2, v5, v10

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v5}, Lmiui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    move-result v5

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v0, v10

    add-float v3, v5, v10

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float v10, v2, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float v11, v3, v11

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v5, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v10, 0x1

    if-eq v5, v10, :cond_57

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v10, 0x3

    if-ne v5, v10, :cond_5a

    :cond_57
    const/4 v5, 0x0

    iput-object v5, p0, Lmiui/maml/ScreenElementRoot;->mHoverElement:Lmiui/maml/elements/AnimatedScreenElement;

    :cond_5a
    const/4 v5, 0x1

    return v5

    :cond_5c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-double v10, v5

    invoke-virtual {p0, v10, v11}, Lmiui/maml/ScreenElementRoot;->descale(D)D

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-double v10, v5

    invoke-virtual {p0, v10, v11}, Lmiui/maml/ScreenElementRoot;->descale(D)D

    move-result-wide v8

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mTouchX:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mTouchY:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_aa

    :goto_7f
    :pswitch_7f
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v5, p1}, Lmiui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_8c

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v5}, Lmiui/maml/RendererController;->requestUpdate()V

    :cond_8c
    return v4

    :pswitch_8d
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginX:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginY:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v5, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginTime:Lmiui/maml/data/IndexedVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-double v10, v10

    invoke-virtual {v5, v10, v11}, Lmiui/maml/data/IndexedVariable;->set(D)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_7f

    :pswitch_a5
    const/4 v5, 0x0

    iput-boolean v5, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_7f

    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_a5
        :pswitch_7f
    .end packed-switch
.end method

.method public onUIInteractive(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public pause()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->pause()V

    const-string/jumbo v0, "ScreenElementRoot"

    const-string/jumbo v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    const-string/jumbo v1, "pause"

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->pause()V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    invoke-virtual {v0}, Lmiui/maml/SoundManager;->pause()V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->pause()V

    :cond_28
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->pause()V

    :cond_31
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->pause()V

    :cond_3a
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0}, Lmiui/maml/ResourceManager;->pause()V

    invoke-virtual {p0, v2, v2}, Lmiui/maml/ScreenElementRoot;->onHoverChange(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/util/ConfigFile;->save(Landroid/content/Context;)Z

    :cond_55
    return-void
.end method

.method protected pauseAnim(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->pauseAnim(J)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->pauseAnim(J)V

    return-void
.end method

.method protected playAnim(JJJZZ)V
    .registers 20

    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lmiui/maml/elements/ElementGroup;->playAnim(JJJZZ)V

    return-void
.end method

.method public playSound(Ljava/lang/String;)I
    .registers 5

    const/4 v2, 0x0

    new-instance v0, Lmiui/maml/SoundManager$SoundOptions;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v1}, Lmiui/maml/SoundManager$SoundOptions;-><init>(ZZF)V

    invoke-virtual {p0, p1, v0}, Lmiui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)I

    move-result v0

    return v0
.end method

.method public playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)I
    .registers 5

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->shouldPlaySound()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/SoundManager;->playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)I

    move-result v0

    return v0

    :cond_15
    return v1
.end method

.method public playSound(ILmiui/maml/SoundManager$Command;)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    invoke-virtual {v1, p1, p2}, Lmiui/maml/SoundManager;->playSound(ILmiui/maml/SoundManager$Command;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "ScreenElementRoot"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .registers 6

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/maml/ScreenContext;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public postMessage(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0, p1}, Lmiui/maml/RendererController;->postMessage(Landroid/view/MotionEvent;)V

    return-void
.end method

.method protected putRawAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenContext;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removePreTicker(Lmiui/maml/elements/ITicker;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestUpdate()V
    .registers 5

    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_17

    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    invoke-virtual {v1}, Lmiui/maml/RendererController;->requestUpdate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public reset(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->reset(J)V

    return-void
.end method

.method public resume()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->resume()V

    const-string/jumbo v0, "ScreenElementRoot"

    const-string/jumbo v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "debug.layout"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    const-string/jumbo v1, "resume"

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->resume()V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->resume()V

    :cond_2c
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->resume()V

    :cond_35
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->resume()V

    :cond_3e
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0}, Lmiui/maml/ResourceManager;->resume()V

    return-void
.end method

.method protected resumeAnim(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->resumeAnim(J)V

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->resumeAnim(J)V

    return-void
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/Double;)V
    .registers 7

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-nez v0, :cond_e

    const-string/jumbo v0, "ScreenElementRoot"

    const-string/jumbo v1, "fail to saveVar, config file is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    if-nez p2, :cond_19

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    const-string/jumbo v1, "null"

    invoke-virtual {v0, p1, v1}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;D)V

    goto :goto_18
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    if-nez v0, :cond_e

    const-string/jumbo v0, "ScreenElementRoot"

    const-string/jumbo v1, "fail to saveVar, config file is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mConfig:Lmiui/maml/util/ConfigFile;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public selfFinish()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->finish()V

    return-void
.end method

.method public selfInit()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->init()V

    return-void
.end method

.method public selfPause()V
    .registers 4

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    invoke-virtual {v2}, Lmiui/maml/RendererController;->selfPause()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public selfResume()V
    .registers 4

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    invoke-virtual {v2}, Lmiui/maml/RendererController;->selfResume()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public setBgColor(I)V
    .registers 2

    iput p1, p0, Lmiui/maml/ScreenElementRoot;->mBgColor:I

    return-void
.end method

.method public setCacheDir(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mCacheDir:Ljava/lang/String;

    return-void
.end method

.method public setCapability(IZ)V
    .registers 5

    if-eqz p2, :cond_8

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mCapability:I

    or-int/2addr v0, p1

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mCapability:I

    :goto_7
    return-void

    :cond_8
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mCapability:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mCapability:I

    goto :goto_7
.end method

.method public setClearCanvas(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mClearCanvas:Z

    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    return-void
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .registers 8

    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const-string/jumbo v1, "orientation"

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_7a

    :cond_1e
    :goto_1e
    return-void

    :pswitch_1f
    const-string/jumbo v1, "raw_screen_width"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string/jumbo v1, "raw_screen_height"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string/jumbo v1, "screen_width"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string/jumbo v1, "screen_height"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    goto :goto_1e

    :pswitch_4c
    const-string/jumbo v1, "raw_screen_width"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string/jumbo v1, "raw_screen_height"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string/jumbo v1, "screen_width"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string/jumbo v1, "screen_height"

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    goto :goto_1e

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_1f
    .end packed-switch
.end method

.method public setDefaultFramerate(F)V
    .registers 2

    iput p1, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    return-void
.end method

.method public final setKeepResource(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mKeepResource:Z

    return-void
.end method

.method public setOnExternCommandListener(Lmiui/maml/ScreenElementRoot$OnExternCommandListener;)V
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_6

    :goto_3
    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    return-void

    :cond_6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public setOnHoverChangeListener(Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mHoverChangeListenerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setRenderControllerListener(Lmiui/maml/RendererController$Listener;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0, p1}, Lmiui/maml/RendererController;->setListener(Lmiui/maml/RendererController$Listener;)V

    return-void
.end method

.method public setRenderControllerRenderable(Lmiui/maml/RendererController$IRenderable;)V
    .registers 3

    new-instance v0, Lmiui/maml/SingleRootListener;

    invoke-direct {v0, p0, p1}, Lmiui/maml/SingleRootListener;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RendererController$IRenderable;)V

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->setRenderControllerListener(Lmiui/maml/RendererController$Listener;)V

    return-void
.end method

.method public setScaleByDensity(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mScaleByDensity:Z

    return-void
.end method

.method public setViewManager(Landroid/view/ViewManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mViewManager:Landroid/view/ViewManager;

    return-void
.end method

.method protected shouldPlaySound()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mInnerGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    return-void
.end method

.method public showFramerate(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mShowFramerate:Z

    return-void
.end method

.method public tick(J)V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedReset:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1, p2}, Lmiui/maml/ScreenElementRoot;->reset(J)V

    const-string/jumbo v0, "init"

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedReset:Z

    :cond_10
    invoke-virtual {p0, p1, p2}, Lmiui/maml/ScreenElementRoot;->doTick(J)V

    return-void
.end method

.method public update(J)J
    .registers 12

    const-wide v6, 0x7fffffffffffffffL

    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_31

    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    invoke-virtual {v1}, Lmiui/maml/RendererController;->isSelfPaused()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {v1}, Lmiui/maml/RendererController;->hasRunnable()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_27

    :cond_24
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_27
    invoke-virtual {v1, p1, p2}, Lmiui/maml/RendererController;->update(J)J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-gez v3, :cond_24

    move-wide v6, v4

    goto :goto_24

    :cond_31
    return-wide v6
.end method

.method public updateIfNeeded(J)J
    .registers 12

    const-wide v6, 0x7fffffffffffffffL

    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_31

    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    invoke-virtual {v1}, Lmiui/maml/RendererController;->isSelfPaused()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {v1}, Lmiui/maml/RendererController;->hasRunnable()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_27

    :cond_24
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_27
    invoke-virtual {v1, p1, p2}, Lmiui/maml/RendererController;->updateIfNeeded(J)J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-gez v3, :cond_24

    move-wide v6, v4

    goto :goto_24

    :cond_31
    return-wide v6
.end method

.method public final version()I
    .registers 2

    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mVersion:I

    return v0
.end method
