.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/a;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/a;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/a;->a:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/a;

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

    check-cast p1, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/CarouselLayoutManager$CenterItemReachMaxSizeListener;

    invoke-interface {p1}, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/CarouselLayoutManager$CenterItemReachMaxSizeListener;->onMaxSizeReached()V

    return-void
.end method
