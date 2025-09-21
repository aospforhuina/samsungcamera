.class public final synthetic Lcom/sec/android/app/camera/layer/menu/effects/filter/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/layer/menu/effects/filter/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/b;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/b;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/b;->a:Lcom/sec/android/app/camera/layer/menu/effects/filter/b;

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

    check-cast p1, Ln5/l;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->a(Ln5/l;)V

    return-void
.end method
