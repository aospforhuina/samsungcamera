.class public final synthetic Lcom/sec/android/app/camera/provider/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/provider/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/provider/k;

    invoke-direct {v0}, Lcom/sec/android/app/camera/provider/k;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/provider/k;->a:Lcom/sec/android/app/camera/provider/k;

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

    check-cast p1, Landroid/app/ActivityManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/provider/CallStateManager;->h(Landroid/app/ActivityManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
