.class Lcom/samsung/android/camera/core2/node/Node$State$Rule;
.super Ljava/lang/Object;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/Node$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rule"
.end annotation


# static fields
.field private static final a:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/camera/core2/node/Node$State;",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/node/Node$State;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/camera/core2/node/Node$State;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/Node$State$Rule;->a:Ljava/util/EnumMap;

    .line 2
    invoke-static {}, Lcom/samsung/android/camera/core2/node/Node$State;->values()[Lcom/samsung/android/camera/core2/node/Node$State;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    const/4 v5, 0x0

    .line 3
    sget-object v6, Lcom/samsung/android/camera/core2/node/Node$13;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    const/4 v8, 0x2

    if-eq v6, v8, :cond_3

    const/4 v9, 0x3

    if-eq v6, v9, :cond_2

    const/4 v9, 0x4

    if-eq v6, v9, :cond_1

    const/4 v9, 0x5

    if-eq v6, v9, :cond_0

    goto :goto_1

    :cond_0
    new-array v5, v8, [Lcom/samsung/android/camera/core2/node/Node$State;

    .line 4
    sget-object v6, Lcom/samsung/android/camera/core2/node/Node$State;->c:Lcom/samsung/android/camera/core2/node/Node$State;

    aput-object v6, v5, v2

    sget-object v6, Lcom/samsung/android/camera/core2/node/Node$State;->d:Lcom/samsung/android/camera/core2/node/Node$State;

    aput-object v6, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    .line 5
    :cond_1
    sget-object v5, Lcom/samsung/android/camera/core2/node/Node$State;->a:Lcom/samsung/android/camera/core2/node/Node$State;

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    :cond_2
    new-array v5, v8, [Lcom/samsung/android/camera/core2/node/Node$State;

    .line 6
    sget-object v6, Lcom/samsung/android/camera/core2/node/Node$State;->f:Lcom/samsung/android/camera/core2/node/Node$State;

    aput-object v6, v5, v2

    sget-object v6, Lcom/samsung/android/camera/core2/node/Node$State;->d:Lcom/samsung/android/camera/core2/node/Node$State;

    aput-object v6, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    :cond_3
    new-array v5, v8, [Lcom/samsung/android/camera/core2/node/Node$State;

    .line 7
    sget-object v6, Lcom/samsung/android/camera/core2/node/Node$State;->f:Lcom/samsung/android/camera/core2/node/Node$State;

    aput-object v6, v5, v2

    sget-object v6, Lcom/samsung/android/camera/core2/node/Node$State;->c:Lcom/samsung/android/camera/core2/node/Node$State;

    aput-object v6, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    .line 8
    :cond_4
    sget-object v5, Lcom/samsung/android/camera/core2/node/Node$State;->b:Lcom/samsung/android/camera/core2/node/Node$State;

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 9
    :goto_1
    sget-object v6, Lcom/samsung/android/camera/core2/node/Node$State$Rule;->a:Ljava/util/EnumMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic a()Ljava/util/EnumMap;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/node/Node$State$Rule;->a:Ljava/util/EnumMap;

    return-object v0
.end method
