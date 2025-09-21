.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/zoom/slider/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/slider/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/slider/a;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/slider/a;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/slider/a;->a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/slider/a;

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

    check-cast p1, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method
