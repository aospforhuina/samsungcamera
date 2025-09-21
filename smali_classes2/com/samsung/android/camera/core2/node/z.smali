.class public final synthetic Lcom/samsung/android/camera/core2/node/z;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/node/z;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/node/z;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/node/z;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/node/z;->a:Lcom/samsung/android/camera/core2/node/z;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/node/NodeFeatureUtil;->f(Ljava/util/Map$Entry;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
