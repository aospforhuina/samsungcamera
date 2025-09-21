.class public Lcom/samsung/android/camera/core2/node/NodeFeatureUtil;
.super Ljava/lang/Object;
.source "NodeFeatureUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap;,
        Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;
    }
.end annotation


# static fields
.field private static final a:Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap;-><init>(Lcom/samsung/android/camera/core2/node/f0;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil;->a:Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil;->n(Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/samsung/android/camera/core2/node/NodeFeature$Property;Ljava/util/List;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil;->s(Lcom/samsung/android/camera/core2/node/NodeFeature$Property;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/Map$Entry;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil;->r(Ljava/util/Map$Entry;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Class;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil;->o(Ljava/lang/Class;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Ljava/lang/Class;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil;->q(Ljava/lang/Class;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Ljava/util/Map$Entry;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil;->p(Ljava/util/Map$Entry;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil;->m(Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;->h(Ljava/lang/Class;)Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/node/x;->a:Lcom/samsung/android/camera/core2/node/x;

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public static i(Ljava/lang/Class;)Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil;->a:Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap;->j(Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/node/a0;->a:Lcom/samsung/android/camera/core2/node/a0;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/node/b0;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/node/b0;-><init>(Ljava/lang/Class;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;

    return-object p0
.end method

.method public static j(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil;->a:Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap;->j(Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/node/c0;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/node/c0;-><init>(Ljava/lang/Class;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/node/z;->a:Lcom/samsung/android/camera/core2/node/z;

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public static k(Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil;->a:Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap;

    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap;->i(Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap;Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;)Z

    move-result p0

    return p0
.end method

.method public static l(Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/NodeFeature$Property;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/samsung/android/camera/core2/node/NodeFeature$Property;",
            ")Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil;->a:Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap;->j(Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfoMap;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/node/d0;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/node/d0;-><init>(Ljava/lang/Class;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/node/y;->a:Lcom/samsung/android/camera/core2/node/y;

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/camera/core2/node/w;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/node/w;-><init>(Lcom/samsung/android/camera/core2/node/NodeFeature$Property;)V

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static synthetic m(Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;->c:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic n(Ljava/lang/Class;Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;)Z
    .locals 0

    iget-object p1, p1, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;->a:Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;

    iget-object p1, p1, Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;->b:Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic o(Ljava/lang/Class;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;

    iget-object p1, p1, Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;->b:Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic p(Ljava/util/Map$Entry;)Ljava/lang/Class;
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;->a:Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;->b:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic q(Ljava/lang/Class;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;

    iget-object p1, p1, Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureGroup;->b:Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic r(Ljava/util/Map$Entry;)Ljava/util/List;
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil$NodeFeatureInfo;->a:Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/NodeFeature$NodeFeatureVersion;->c:Ljava/util/List;

    return-object p0
.end method

.method private static synthetic s(Lcom/samsung/android/camera/core2/node/NodeFeature$Property;Ljava/util/List;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
