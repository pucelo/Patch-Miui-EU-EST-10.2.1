.class public Landroid/preference/MyTranslatePreference;
.super Ljava/lang/Object;
.source "MyTranslatePreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field public metrics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/preference/MyTranslatePreference;->initHashLocale()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/MyTranslatePreference;->metrics:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/preference/MyTranslatePreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/preference/MyTranslatePreference;->initHashLocale()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/MyTranslatePreference;->metrics:Ljava/util/Map;

    return-void
.end method

.method private initHashLocale()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v5, "ruRU"

    aput-object v5, v2, v4

    const/4 v5, 0x1

    const-string/jumbo v6, "ukUA"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "beBY"

    aput-object v6, v2, v5

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    array-length v5, v2

    :goto_1b
    if-ge v4, v5, :cond_60d

    aget-object v1, v2, v4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v6, "ruRU"

    if-ne v1, v6, :cond_418

    const-string/jumbo v6, "Hot"

    const-string/jumbo v7, "\u041f\u043e\u043f\u0443\u043b\u044f\u0440\u043d\u044b\u0435"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Try featured wallpapers"

    const-string/jumbo v7, "\u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u043f\u043e\u043f\u0443\u043b\u044f\u0440\u043d\u044b\u0435 \u043e\u0431\u043e\u0438"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "OGQ"

    const-string/jumbo v7, "\u041e\u0431\u043e\u0438 HD"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Offers you a rich range of nice wallpapers!"

    const-string/jumbo v7, "\u0411\u043e\u0433\u0430\u0442\u044b\u0439 \u0432\u044b\u0431\u043e\u0440 \u043a\u0440\u0430\u0441\u0438\u0432\u044b\u0445 \u043e\u0431\u043e\u0435\u0432!"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Daily Recommendations"

    const-string/jumbo v7, "\u0415\u0436\u0435\u0434\u043d\u0435\u0432\u043d\u044b\u0435 \u0440\u0435\u043a\u043e\u043c\u0435\u043d\u0434\u0430\u0446\u0438\u0438"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Daily New Theme"

    const-string/jumbo v7, "\u0415\u0436\u0435\u0434\u043d\u0435\u0432\u043d\u043e \u043d\u043e\u0432\u044b\u0435 \u0442\u0435\u043c\u044b"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "For Boys"

    const-string/jumbo v7, "\u0414\u043b\u044f \u043f\u0430\u0440\u043d\u0435\u0439"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "So Cool"

    const-string/jumbo v7, "\u0422\u0430\u043a \u043a\u0440\u0443\u0442\u043e"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "MIUI\'s 8th Anniversary"

    const-string/jumbo v7, "8-\u044f \u0433\u043e\u0434\u043e\u0432\u0449\u0438\u043d\u0430 MIUI"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "For the Love of MIUI"

    const-string/jumbo v7, "\u0414\u043b\u044f \u0442\u0435\u0445, \u043a\u0442\u043e \u043b\u044e\u0431\u0438\u0442 MIUI"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "For Girls"

    const-string/jumbo v7, "\u0414\u043b\u044f \u0434\u0435\u0432\u0443\u0448\u0435\u043a"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Fresh and Lovely"

    const-string/jumbo v7, "\u0421\u0432\u0435\u0436\u0438\u0435 \u0438 \u043c\u0438\u043b\u044b\u0435"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Know You Better"

    const-string/jumbo v7, "\u0423\u0437\u043d\u0430\u0439\u0442\u0435 \u0441\u0435\u0431\u044f \u043b\u0443\u0447\u0448\u0435 "

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Top 100 In May"

    const-string/jumbo v7, "\u0422\u043e\u043f-100 \u0432 \u043c\u0430\u0435"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Let\'s Not Miss It"

    const-string/jumbo v7, "\u041d\u0435 \u0443\u043f\u0443\u0441\u0442\u0438\u0442\u0435 \u0438\u0445"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Top 100 In June"

    const-string/jumbo v7, "\u0422\u043e\u043f-100 \u0432 \u0438\u044e\u043d\u0435"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Top 100 In Jun"

    const-string/jumbo v7, "\u0422\u043e\u043f-100 \u0432 \u0438\u044e\u043d\u0435"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Weekly Top 10"

    const-string/jumbo v7, "\u0415\u0436\u0435\u043d\u0435\u0434\u0435\u043b\u044c\u043d\u044b\u0435 \u0442\u043e\u043f 10"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Keep It For You"

    const-string/jumbo v7, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u0435 \u0438\u0445 \u0441\u0435\u0431\u0435"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Keep it For You"

    const-string/jumbo v7, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u0435 \u0438\u0445 \u0441\u0435\u0431\u0435"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Buildings"

    const-string/jumbo v7, "\u0417\u0434\u0430\u043d\u0438\u044f"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "The World At Your Feet"

    const-string/jumbo v7, "\u041c\u0438\u0440 \u0443 \u0442\u0432\u043e\u0438\u0445 \u043d\u043e\u0433"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Space"

    const-string/jumbo v7, "\u041a\u043e\u0441\u043c\u043e\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "The Final Frontier."

    const-string/jumbo v7, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0439 \u0440\u0443\u0431\u0435\u0436"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Most Popular in the Month"

    const-string/jumbo v7, "\u0421\u0430\u043c\u044b\u0435 \u043f\u043e\u043f\u0443\u043b\u044f\u0440\u043d\u044b\u0435 \u0437\u0430 \u043c\u0435\u0441\u044f\u0446"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Top 100 In July"

    const-string/jumbo v7, "\u0422\u043e\u043f-100 \u0432 \u0438\u044e\u043d\u0435"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Top 100 In Aug."

    const-string/jumbo v7, "\u0422\u043e\u043f 100 \u0437\u0430 \u0430\u0432\u0433\u0443\u0441\u0442"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Majestic Waves"

    const-string/jumbo v7, "\u0412\u0435\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u0435\u043d\u043d\u044b\u0435 \u0432\u043e\u043b\u043d\u044b"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Thematic Library"

    const-string/jumbo v7, "\u0422\u0435\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0430\u044f \u0431\u0438\u0431\u043b\u0438\u043e\u0442\u0435\u043a\u0430"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Old is Gold"

    const-string/jumbo v7, "\u041a\u043b\u0430\u0441\u0441\u0438\u0447\u0435\u0441\u043a\u0438\u0435 \u043f\u0430\u043a\u0438"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Featured Desktop Themes"

    const-string/jumbo v7, "\u0420\u0430\u0431\u043e\u0447\u0438\u0439 \u0441\u0442\u043e\u043b"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Get the New Windows Look"

    const-string/jumbo v7, "\u041f\u043e\u043b\u0443\u0447\u0438\u0442\u0435 \u043d\u043e\u0432\u044b\u0439 \u0432\u0438\u0434 \u0440\u0430\u0431\u043e\u0447\u0435\u0433\u043e \u0441\u0442\u043e\u043b\u0430"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Themes for MIUI 10"

    const-string/jumbo v7, "\u0422\u0435\u043c\u044b \u0434\u043b\u044f MIUI 10"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "MIUI 10 Compatible Themes"

    const-string/jumbo v7, "\u0422\u0435\u043c\u044b, \u0441\u043e\u0432\u043c\u0435\u0441\u0442\u0438\u043c\u044b\u0435 \u0441 MIUI 10"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Nature"

    const-string/jumbo v7, "\u041f\u0440\u0438\u0440\u043e\u0434\u0430"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Street Art"

    const-string/jumbo v7, "\u0423\u043b\u0438\u0447\u043d\u043e\u0435 \u0438\u0441\u043a\u0443\u0441\u0441\u0442\u0432\u043e"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Grab \'em right away!"

    const-string/jumbo v7, "\u0412\u043e\u0437\u044c\u043c\u0438\u0442\u0435 \u0435\u0433\u043e \u043f\u0440\u044f\u043c\u043e \u0441\u0435\u0439\u0447\u0430\u0441!"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Starry Sky"

    const-string/jumbo v7, "\u0417\u0432\u0435\u0437\u0434\u043d\u043e\u0435 \u043d\u0435\u0431\u043e"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Life Underwater"

    const-string/jumbo v7, "\u0416\u0438\u0437\u043d\u044c \u043f\u043e\u0434 \u0432\u043e\u0434\u043e\u0439"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Inspired Themes for You"

    const-string/jumbo v7, "\u0412\u0434\u043e\u0445\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044b\u0435 \u0442\u0435\u043c\u044b \u0434\u043b\u044f \u0432\u0430\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Sunset"

    const-string/jumbo v7, "\u0417\u0430\u043a\u0430\u0442"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Cool Metal Texture"

    const-string/jumbo v7, "\u041a\u0440\u0443\u0442\u044b\u0435 \u0442\u0435\u043a\u0441\u0442\u0443\u0440\u044b \u043c\u0435\u0442\u0430\u043b\u043b\u0430"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Civic Landscape"

    const-string/jumbo v7, "\u0413\u043e\u0440\u043e\u0434\u0441\u043a\u043e\u0439 \u043f\u0435\u0439\u0437\u0430\u0436"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Material"

    const-string/jumbo v7, "\u041c\u0430\u0442\u0435\u0440\u0438\u0430\u043b \u0434\u0438\u0437\u0430\u0439\u043d"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Guess You Like"

    const-string/jumbo v7, "\u0423\u0433\u0430\u0434\u0430\u0439, \u0447\u0442\u043e \u0442\u0435\u0431\u0435 \u043d\u0440\u0430\u0432\u0438\u0442\u0441\u044f"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "The Moods"

    const-string/jumbo v7, "\u041d\u0430\u0441\u0442\u0440\u043e\u0435\u043d\u0438\u0435"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "What\'s Your Mood Now?"

    const-string/jumbo v7, "\u041a\u0430\u043a\u043e\u0435 \u0443 \u0432\u0430\u0441 \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043d\u0438\u0435 \u0441\u0435\u0439\u0447\u0430\u0441?"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Theme Your Thoughts"

    const-string/jumbo v7, "\u0422\u0435\u043c\u0430 \u0432\u0430\u0448\u0438 \u043c\u044b\u0441\u043b\u0438"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "We spend a lot of money on themes but they are all free for our Mi Fans now."

    const-string/jumbo v7, "\u041c\u044b \u0442\u0440\u0430\u0442\u0438\u043c \u043c\u043d\u043e\u0433\u043e \u0434\u0435\u043d\u0435\u0433 \u043d\u0430 \u0442\u0435\u043c\u044b, \u043d\u043e \u043e\u043d\u0438 \u0431\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u044b \u0434\u043b\u044f \u043d\u0430\u0448\u0438\u0445 Mi \u0444\u0430\u043d\u0430\u0442\u043e\u0432."

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Theme Contest Entries"

    const-string/jumbo v7, "\u0422\u0435\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438\u0435 \u043a\u043e\u043d\u043a\u0443\u0440\u0441\u044b"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "The Clock"

    const-string/jumbo v7, "\u0427\u0430\u0441\u044b"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Decorate Your Phone"

    const-string/jumbo v7, "\u0423\u043a\u0440\u0430\u0441\u044c\u0442\u0435 \u0441\u0432\u043e\u0439 \u0442\u0435\u043b\u0435\u0444\u043e\u043d"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Keep Time With You"

    const-string/jumbo v7, "\u041e\u0441\u0442\u0430\u0432\u0430\u0439\u0442\u0435\u0441\u044c \u0432\u043c\u0435\u0441\u0442\u0435 \u0441\u043e \u0432\u0440\u0435\u043c\u0435\u043d\u0435\u043c"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Subtle"

    const-string/jumbo v7, "\u0423\u0442\u043e\u043d\u0447\u0435\u043d\u043d\u043e\u0441\u0442\u044c"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Dark Hues"

    const-string/jumbo v7, "\u041e\u0442\u0442\u0435\u043d\u043a\u0438 \u0442\u0435\u043c\u043d\u043e\u0433\u043e"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Black Simple Elegance"

    const-string/jumbo v7, "\u0427\u0435\u0440\u043d\u043e\u0435. \u041f\u0440\u043e\u0441\u0442\u043e\u0435. \u042d\u043b\u0435\u0433\u0430\u043d\u0442\u043d\u043e\u0435."

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Top Bollywood"

    const-string/jumbo v7, "\u0422\u043e\u043f \u0411\u043e\u043b\u043b\u0438\u0432\u0443\u0434"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Weekly Bollywood Top Charts"

    const-string/jumbo v7, "\u0415\u0436\u0435\u043d\u0435\u0434\u0435\u043b\u044c\u043d\u044b\u0435 \u0433\u043b\u0430\u0432\u043d\u044b\u0435 \u0447\u0430\u0440\u0442\u044b \u0411\u043e\u043b\u043b\u0438\u0432\u0443\u0434\u0430"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Bike Rides"

    const-string/jumbo v7, "\u0412\u0435\u043b\u043e\u0441\u0438\u043f\u0435\u0434\u043d\u044b\u0435 \u043f\u0440\u043e\u0433\u0443\u043b\u043a\u0438"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Guess You Like"

    const-string/jumbo v7, "\u0423\u0433\u0430\u0434\u0430\u0439, \u0447\u0442\u043e \u0442\u0435\u0431\u0435 \u043d\u0440\u0430\u0432\u0438\u0442\u0441\u044f"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Young and Colorful"

    const-string/jumbo v7, "\u041c\u043e\u043b\u043e\u0434\u044b\u0435 \u0438 \u043a\u0440\u0430\u0441\u043e\u0447\u043d\u044b\u0435"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "We Are Young"

    const-string/jumbo v7, "\u041c\u044b \u043c\u043e\u043b\u043e\u0434\u044b"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Material"

    const-string/jumbo v7, "\u041c\u0430\u0442\u0435\u0440\u0438\u0430\u043b \u0434\u0438\u0437\u0430\u0439\u043d"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Moonshine"

    const-string/jumbo v7, "\u041b\u0443\u043d\u043d\u044b\u0439 \u0441\u0432\u0435\u0442"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Touched By The Moon"

    const-string/jumbo v7, "\u041f\u0440\u0438\u043a\u043e\u0441\u043d\u043e\u0432\u0435\u043d\u0438\u0435 \u043a \u043b\u0443\u043d\u0435"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Good Design"

    const-string/jumbo v7, "\u041b\u0443\u0447\u0448\u0438\u0439 \u0434\u0438\u0437\u0430\u0439\u043d"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Made with a true heart"

    const-string/jumbo v7, "\u0421\u0434\u0435\u043b\u0430\u043d\u043e \u0441 \u043b\u044e\u0431\u043e\u0432\u044c\u044e &#x2764;"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Find Your Style"

    const-string/jumbo v7, "\u041d\u0430\u0439\u0434\u0438 \u0441\u0432\u043e\u0439 \u0441\u0442\u0438\u043b\u044c"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "There is always one theme for everyone"

    const-string/jumbo v7, "\u0412\u0441\u0435\u0433\u0434\u0430 \u0435\u0441\u0442\u044c \u043e\u0434\u043d\u0430 \u0442\u0435\u043c\u0430 \u0434\u043b\u044f \u0432\u0441\u0435\u0445"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Official Themes"

    const-string/jumbo v7, "\u041e\u0444\u0438\u0446\u0438\u0430\u043b\u044c\u043d\u044b\u0435 \u0442\u0435\u043c\u044b"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Made by Mi"

    const-string/jumbo v7, "\u0421\u0434\u0435\u043b\u0430\u043d\u043e Miui"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Themes You Can\'t Miss"

    const-string/jumbo v7, "\u0422\u0435\u043c\u044b, \u043a\u043e\u0442\u043e\u0440\u044b\u0435 \u043d\u0435\u043b\u044c\u0437\u044f \u043f\u0440\u043e\u043f\u0443\u0441\u0442\u0438\u0442\u044c"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Recommended for you"

    const-string v7, "\u0420\u0435\u043a\u043e\u043c\u0435\u043d\u0434\u0443\u0435\u043c\u044b\u0435 \u0434\u043b\u044f \u0412\u0430\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Recommended For You"

    const-string/jumbo v7, "\u0420\u0435\u043a\u043e\u043c\u0435\u043d\u0434\u0443\u0435\u043c\u044b\u0435 \u0434\u043b\u044f \u0412\u0430\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "A new theme\uff0ca new day"

    const-string/jumbo v7, "\u041a\u0430\u0436\u0434\u044b\u0439 \u0434\u0435\u043d\u044c \u043d\u043e\u0432\u0430\u044f \u0442\u0435\u043c\u0430"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "For you"

    const-string/jumbo v7, "\u0421\u043f\u0435\u0446\u0438\u0430\u043b\u044c\u043d\u043e \u0434\u043b\u044f \u0412\u0430\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Mobyfont"

    const-string/jumbo v7, "\u0428\u0440\u0438\u0444\u0442\u044b Moby"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Aa Font"

    const-string/jumbo v7, "\u0428\u0440\u0438\u0444\u0442\u044b Aa"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "DynaFont"

    const-string/jumbo v7, "\u0428\u0440\u0438\u0444\u044b Dyna"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Top Charts"

    const-string/jumbo v7, "\u0425\u0438\u0442-\u043f\u0430\u0440\u0430\u0434"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Most downloaded last week"

    const-string/jumbo v7, "\u0421\u0430\u043c\u044b\u0435 \u0441\u043a\u0430\u0447\u0438\u0432\u0430\u0435\u043c\u044b\u0435 \u043d\u0430 \u043f\u0440\u043e\u0448\u043b\u043e\u0439 \u043d\u0435\u0434\u0435\u043b\u0435"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Wallpapers"

    const-string/jumbo v7, "\u041e\u0431\u043e\u0438"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Lots of hand-picked quality images"

    const-string/jumbo v7, "\u041c\u043d\u043e\u0433\u043e \u043a\u0430\u0447\u0435\u0441\u0442\u0432\u0435\u043d\u043d\u044b\u0445 \u043e\u0431\u043e\u0435\u0432"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Favorite and Popular"

    const-string/jumbo v7, "\u0418\u0437\u0431\u0440\u0430\u043d\u043d\u044b\u0435 \u0438 \u043f\u043e\u043f\u0443\u043b\u044f\u0440\u043d\u044b\u0435"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "User\'s choice, best choice."

    const-string/jumbo v7, "\u0412\u044b\u0431\u043e\u0440 \u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u0435\u0439, \u043b\u0443\u0447\u0448\u0438\u0435."

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Decoration"

    const-string/jumbo v7, "\u041e\u0444\u043e\u0440\u043c\u043b\u0435\u043d\u0438\u0435"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Decorate from inside"

    const-string/jumbo v7, "\u0423\u043a\u0440\u0430\u0448\u0435\u043d\u0438\u0435 \u0438\u0437\u043d\u0443\u0442\u0440\u0438"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Daily Update"

    const-string/jumbo v7, "\u0415\u0436\u0435\u0434\u043d\u0435\u0432\u043d\u044b\u0435 \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "New wallpapers everyday!"

    const-string/jumbo v7, "\u041d\u043e\u0432\u044b\u0435 \u043e\u0431\u043e\u0438 \u043a\u0430\u0436\u0434\u044b\u0439 \u0434\u0435\u043d\u044c!"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "New Year, Party On"

    const-string/jumbo v7, "\u041d\u043e\u0432\u044b\u0439 \u0433\u043e\u0434, \u0432\u0435\u0447\u0435\u0440\u0438\u043d\u043a\u0430"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Let The Party Begin!"

    const-string/jumbo v7, "\u0414\u0430 \u043d\u0430\u0447\u043d\u0435\u0442\u0441\u044f \u0432\u0435\u0447\u0435\u0440\u0438\u043d\u043a\u0430!"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Photos from Gallery"

    const-string/jumbo v7, "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0438"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Recorder backup"

    const-string/jumbo v7, "\u0414\u0438\u043a\u0442\u043e\u0444\u043e\u043d"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Music Backup"

    const-string/jumbo v7, "\u041c\u0443\u0437\u044b\u043a\u0430"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "App backups"

    const-string/jumbo v7, "\u041f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Top 100"

    const-string/jumbo v7, "\u0422\u043e\u043f 100"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Top 100 In Sept."

    const-string/jumbo v7, "\u0422\u043e\u043f 100 \u0432 \u0441\u0435\u043d\u0442\u044f\u0431\u0440\u0435"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Top 100 In Oct."

    const-string/jumbo v7, "\u0422\u043e\u043f 100 \u0432 \u043e\u043a\u0442\u044f\u0431\u0440\u0435"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Abstract Paintings"

    const-string/jumbo v7, "\u0410\u0431\u0441\u0442\u0440\u0430\u043a\u0442\u043d\u044b\u0435 \u043a\u0430\u0440\u0442\u0438\u043d\u044b"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "The Best Way to Express Your Emotions"

    const-string/jumbo v7, "\u041b\u0443\u0447\u0448\u0438\u0439 \u0441\u043f\u043e\u0441\u043e\u0431 \u0432\u044b\u0440\u0430\u0437\u0438\u0442\u044c \u044d\u043c\u043e\u0446\u0438\u0438"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "The Abstract"

    const-string/jumbo v7, "\u0410\u043d\u043d\u043e\u0442\u0430\u0446\u0438\u044f"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Themes With Small Cute Round Icons To Show Off!"

    const-string/jumbo v7, "\u0422\u0435\u043c\u044b \u0441 \u043c\u0430\u043b\u0435\u043d\u044c\u043a\u0438\u043c\u0438 \u043a\u0440\u0443\u0433\u043b\u044b\u043c\u0438 \u0438\u043a\u043e\u043d\u043a\u0430\u043c\u0438 \u0434\u043b\u044f \u043f\u043e\u043a\u0430\u0437\u0430!"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Design For MIUI10"

    const-string/jumbo v7, "\u0414\u0438\u0437\u0430\u0439\u043d \u0434\u043b\u044f MIUI 10"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Selected From Theme Design Compettion"

    const-string/jumbo v7, "\u0412\u044b\u0431\u0440\u0430\u043d\u043d\u044b\u0439 \u0438\u0437 \u0442\u0435\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438\u0445 \u043f\u0440\u043e\u0435\u043a\u0442\u043e\u0432"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Unspoken Words"

    const-string/jumbo v7, "\u041d\u0435\u043f\u043e\u043d\u044f\u0442\u043d\u044b\u0435 \u0441\u043b\u043e\u0432\u0430"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "There is a Story"

    const-string/jumbo v7, "\u0415\u0441\u0442\u044c \u043e\u0434\u043d\u0430 \u0438\u0441\u0442\u043e\u0440\u0438\u044f"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Dusk illusion"

    const-string/jumbo v7, "\u0418\u043b\u043b\u044e\u0437\u0438\u044f \u0441\u0443\u043c\u0435\u0440\u0435\u043a"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Dusk till Dawn"

    const-string/jumbo v7, "\u041e\u0442 \u0437\u0430\u043a\u0430\u0442\u0430 \u0434\u043e \u0440\u0430\u0441\u0441\u0432\u0435\u0442\u0430"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Film In Theme"

    const-string/jumbo v7, "\u0424\u0438\u043b\u044c\u043c \u0432 \u0442\u0435\u043c\u0435"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Find Your Favourite Themes in These Films!"

    const-string/jumbo v7, "\u041d\u0430\u0439\u0434\u0438\u0442\u0435 \u0441\u0432\u043e\u0438 \u043b\u044e\u0431\u0438\u043c\u044b\u0435 \u0442\u0435\u043c\u044b \u0432 \u044d\u0442\u0438\u0445 \u0444\u0438\u043b\u044c\u043c\u0430\u0445!"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Find Your Favourite Themes inThese Films!"

    const-string/jumbo v7, "\u041d\u0430\u0439\u0434\u0438\u0442\u0435 \u0441\u0432\u043e\u0438 \u043b\u044e\u0431\u0438\u043c\u044b\u0435 \u0442\u0435\u043c\u044b \u0432 \u044d\u0442\u0438\u0445 \u0444\u0438\u043b\u044c\u043c\u0430\u0445!"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "My Camera"

    const-string/jumbo v7, "\u041a\u0430\u043c\u0435\u0440\u0430"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_418
    const-string/jumbo v6, "ukUA"

    if-ne v1, v6, :cond_42b

    const-string v6, "mAh"

    const-string v7, "\u043c\u0410\u0433"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "%dmAh"

    const-string v7, "%d \u043c\u0410\u0433"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42b
    const-string/jumbo v6, "beBY"

    if-ne v1, v6, :cond_43e

    const-string v6, "mAh"

    const-string v7, "\u043c\u0410\u0433"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "%dmAh"

    const-string v7, "%d \u043c\u0410\u0433"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43e
    const-string/jumbo v6, "GB"

    const-string/jumbo v7, "\u0413\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "TB"

    const-string/jumbo v7, "\u0422\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "KB"

    const-string v7, "\u041a\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "MB"

    const-string/jumbo v7, "\u041c\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "s"

    const-string v7, "\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "/s"

    const-string/jumbo v7, "/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "KB/s"

    const-string/jumbo v7, "\u041a\u0411/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "MB/s"

    const-string/jumbo v7, "\u041c\u0411/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Kbps"

    const-string/jumbo v7, "\u041a\u0431\u0438\u0442/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Gbps"

    const-string/jumbo v7, "\u0413\u0431\u0438\u0442/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "%1.1f KB"

    const-string/jumbo v7, "%1.1f \u041a\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "%1.1f MB"

    const-string/jumbo v7, "%1.1f \u041c\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "%1.1f GB"

    const-string/jumbo v7, "%1.1f \u0413\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "%.1fKB"

    const-string/jumbo v7, "%.1f \u041a\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "%.1fMB"

    const-string/jumbo v7, "%.1f \u041c\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "%.1fGB"

    const-string/jumbo v7, "%.1f \u0413\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "%.0fK"

    const-string/jumbo v7, "%.0f \u041a\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "%.1fM"

    const-string/jumbo v7, "%.1f \u041c\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "%1.1fMB"

    const-string/jumbo v7, "%1.1f \u041c\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "G"

    const-string/jumbo v7, "\u0413\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "M"

    const-string/jumbo v7, "\u041c\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "B"

    const-string/jumbo v7, "\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "k"

    const-string/jumbo v7, " \u041a\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "Mbps"

    const-string/jumbo v7, "\u041c\u0431\u0438\u0442/\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "fps"

    const-string/jumbo v7, "\u043a\u0430\u0434\u0440./\u0441"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, " mAh"

    const-string/jumbo v7, " \u043c\u0410\u0447"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "%.0fG"

    const-string/jumbo v7, "%.0f \u0413\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "%.1fG"

    const-string/jumbo v7, "%.1f \u0413\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "%1$.2fGB"

    const-string/jumbo v7, "%1$.2f \u0413\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "%1$.2fMB"

    const-string/jumbo v7, "%1$.2f \u041c\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "%.2fKB"

    const-string/jumbo v7, "%.2f \u041a\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "%.2fMB"

    const-string/jumbo v7, "%.2f \u041c\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "0B"

    const-string/jumbo v7, "0 \u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "%.2f KB"

    const-string/jumbo v7, "%.2f \u041a\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "%.2f MB"

    const-string/jumbo v7, "%.2f \u041c\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "%.2f GB"

    const-string/jumbo v7, "%.2f \u0413\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "%%1$.%df%sB"

    const-string/jumbo v7, "%%1$.%df%s \u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "%d bytes"

    const-string/jumbo v7, "%d \u0411\u0430\u0439\u0442"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "100M"

    const-string/jumbo v7, "100 \u041c\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "40M"

    const-string/jumbo v7, "40 \u041c\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "20M"

    const-string/jumbo v7, "20 \u041c\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "10M"

    const-string/jumbo v7, "10 \u041c\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "5M"

    const-string/jumbo v7, "5 \u041c\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "2M"

    const-string/jumbo v7, "2 \u041c\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "1M"

    const-string/jumbo v7, "1 \u041c\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "0.1MB"

    const-string/jumbo v7, "0.1 \u041c\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "0MB"

    const-string/jumbo v7, "0 \u041c\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "0.1KB"

    const-string/jumbo v7, "0.1 \u041a\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "0KB"

    const-string/jumbo v7, "0 \u041a\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "0.1GB"

    const-string/jumbo v7, "0.1 \u0413\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "0GB"

    const-string/jumbo v7, "0 \u0413\u0411"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1b

    :cond_60d
    return-object v3
.end method

.method public static translateMetrics(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "cm8ubWl1aS5jdXN0b21fbW9k"

    invoke-static {v7, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/String;

    const-string/jumbo v7, "TWlVSV9NUw=="

    invoke-static {v7, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_100

    new-instance v6, Landroid/preference/MyTranslatePreference;

    invoke-direct {v6}, Landroid/preference/MyTranslatePreference;-><init>()V

    iget-object v2, v6, Landroid/preference/MyTranslatePreference;->metrics:Ljava/util/Map;

    move-object v3, p0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_102

    :cond_54
    move v5, v6

    :goto_55
    packed-switch v5, :pswitch_data_110

    :goto_58
    const/4 v5, 0x0

    :try_start_59
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_5c
    .catch Ljava/lang/NullPointerException; {:try_start_59 .. :try_end_5c} :catch_e7

    :goto_5c
    const-string/jumbo v5, "MyTranslate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "String="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Locale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "TranslateString="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "/\u0441"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9d

    const-string/jumbo v5, "/s"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_eb

    :cond_9d
    :goto_9d
    return-object v3

    :sswitch_9e
    const-string/jumbo v7, "ruRU"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54

    goto :goto_55

    :sswitch_a8
    const-string/jumbo v5, "ukUA"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    const/4 v5, 0x1

    goto :goto_55

    :sswitch_b3
    const-string/jumbo v5, "beBY"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    const/4 v5, 0x2

    goto :goto_55

    :pswitch_be
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_58

    :pswitch_cb
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto/16 :goto_58

    :pswitch_d9
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto/16 :goto_58

    :catch_e7
    move-exception v0

    move-object v3, p0

    goto/16 :goto_5c

    :cond_eb
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9d

    :cond_100
    move-object v3, p0

    goto :goto_9d

    :sswitch_data_102
    .sparse-switch
        0x2e0fda -> :sswitch_b3
        0x3593c6 -> :sswitch_9e
        0x36cba2 -> :sswitch_a8
    .end sparse-switch

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_be
        :pswitch_cb
        :pswitch_d9
    .end packed-switch
.end method
