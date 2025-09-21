.class public final synthetic Lcom/sec/android/app/camera/shootingmode/more/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/shootingmode/more/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/more/i;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/more/i;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/more/i;->a:Lcom/sec/android/app/camera/shootingmode/more/i;

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

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->semRequestAccessibilityFocus()Z

    return-void
.end method
