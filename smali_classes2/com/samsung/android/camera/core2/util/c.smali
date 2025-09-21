.class public final synthetic Lcom/samsung/android/camera/core2/util/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/util/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/util/c;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/util/c;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/util/c;->a:Lcom/samsung/android/camera/core2/util/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/camera/core2/util/BasketCollector$Item;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/BasketCollector;->b(Lcom/samsung/android/camera/core2/util/BasketCollector$Item;)V

    return-void
.end method
