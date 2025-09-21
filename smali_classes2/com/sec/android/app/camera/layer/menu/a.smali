.class public final synthetic Lcom/sec/android/app/camera/layer/menu/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/layer/menu/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/menu/a;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/menu/a;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/layer/menu/a;->a:Lcom/sec/android/app/camera/layer/menu/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    check-cast p2, Lcom/sec/android/app/camera/layer/menu/MenuLayerPresenter$Menu;

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/layer/menu/MenuLayerPresenter;->b(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;Lcom/sec/android/app/camera/layer/menu/MenuLayerPresenter$Menu;)V

    return-void
.end method
