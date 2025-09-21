.class public Ls5/b;
.super Ljava/lang/Object;
.source "IdlingResourceManager.java"


# static fields
.field private static final a:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Ls5/d;",
            "Ls5/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Ls5/d;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Ls5/b;->a:Ljava/util/EnumMap;

    .line 2
    invoke-static {}, Ls5/b;->c()V

    return-void
.end method

.method public static synthetic a(Ls5/d;Ls5/c;)V
    .locals 0

    invoke-static {p0, p1}, Ls5/b;->d(Ls5/d;Ls5/c;)V

    return-void
.end method

.method public static b(Ls5/d;)Ls5/c;
    .locals 1

    sget-object v0, Ls5/b;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls5/c;

    return-object p0
.end method

.method private static c()V
    .locals 8

    .line 1
    invoke-static {}, Ls5/d;->values()[Ls5/d;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    sget-object v4, Ls5/b;->a:Ljava/util/EnumMap;

    new-instance v5, Ls5/c;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ls5/c;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v4, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic d(Ls5/d;Ls5/c;)V
    .locals 0

    invoke-virtual {p1}, Ls5/c;->b()V

    return-void
.end method

.method public static e()V
    .locals 2

    sget-object v0, Ls5/b;->a:Ljava/util/EnumMap;

    sget-object v1, Ls5/a;->a:Ls5/a;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
