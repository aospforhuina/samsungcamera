.class public final synthetic Lcom/sec/android/app/camera/layer/shootingmode/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/layer/shootingmode/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/shootingmode/d;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/shootingmode/d;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/layer/shootingmode/d;->a:Lcom/sec/android/app/camera/layer/shootingmode/d;

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

    check-cast p1, Lcom/sec/android/app/camera/interfaces/TouchAeAfRestrictedAreaDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/TouchAeAfRestrictedAreaDelegate;->getTouchAeAfRestrictedRightArea()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
