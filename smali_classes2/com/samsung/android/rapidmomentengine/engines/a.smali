.class public Lcom/samsung/android/rapidmomentengine/engines/a;
.super Ljava/lang/Object;
.source "EngineManager.java"


# static fields
.field private static final a:Ljava/lang/String; = "a"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "La4/b;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/a;->a:Ljava/lang/String;

    const-string v1, "getAllEngines:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/a;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/a;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static b(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "La4/b;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/a;->a()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 2
    :cond_1
    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/a;->d()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 3
    :cond_2
    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/a;->c()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static c()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "La4/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;

    invoke-direct {v1}, Lcom/samsung/android/rapidmomentengine/engines/EngineBlur;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;

    invoke-direct {v1}, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static d()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "La4/b;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/a;->a:Ljava/lang/String;

    const-string v1, "getEnginesForB:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;

    invoke-direct {v1}, Lcom/samsung/android/rapidmomentengine/engines/EngineColorfulness;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;

    invoke-direct {v1}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;

    invoke-direct {v1}, Lcom/samsung/android/rapidmomentengine/engines/EngineAiDID;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static e(I)[I
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/a;->h()[I

    move-result-object p0

    return-object p0

    .line 2
    :cond_1
    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/a;->g()[I

    move-result-object p0

    return-object p0

    .line 3
    :cond_2
    invoke-static {}, Lcom/samsung/android/rapidmomentengine/engines/a;->f()[I

    move-result-object p0

    return-object p0
.end method

.method private static f()[I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/a;->a:Ljava/lang/String;

    const-string v1, "getEnginesForA:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private static g()[I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x2

    aput v2, v0, v1

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private static h()[I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v2, 0x5

    aput v1, v0, v2

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method
