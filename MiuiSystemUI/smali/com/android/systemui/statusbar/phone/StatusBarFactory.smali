.class public Lcom/android/systemui/statusbar/phone/StatusBarFactory;
.super Ljava/lang/Object;
.source "StatusBarFactory.java"


# static fields
.field private static sFactory:Lcom/android/systemui/statusbar/phone/StatusBarFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarFactory;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarFactory;->sFactory:Lcom/android/systemui/statusbar/phone/StatusBarFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/StatusBarFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarFactory;->sFactory:Lcom/android/systemui/statusbar/phone/StatusBarFactory;

    return-object v0
.end method


# virtual methods
.method getCollapsedStatusBarFragmentController()Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragmentController;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragmentControllerImpl;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragmentControllerImpl;-><init>()V

    return-object v0
.end method

.method getKeyguardStatusBarViewController()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerImpl;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewControllerImpl;-><init>()V

    return-object v0
.end method
