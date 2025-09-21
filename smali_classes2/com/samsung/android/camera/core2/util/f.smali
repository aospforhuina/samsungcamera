.class public final synthetic Lcom/samsung/android/camera/core2/util/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/util/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/util/f;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/util/f;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/util/f;->a:Lcom/samsung/android/camera/core2/util/f;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/camera/core2/util/BasketCollector$Item;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/BasketCollector;->c(Lcom/samsung/android/camera/core2/util/BasketCollector$Item;)Z

    move-result p0

    return p0
.end method
