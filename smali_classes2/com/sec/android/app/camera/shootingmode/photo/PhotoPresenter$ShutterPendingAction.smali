.class final enum Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;
.super Ljava/lang/Enum;
.source "PhotoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ShutterPendingAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;

.field public static final enum BURST_SHOT:Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;

.field public static final enum NONE:Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;

.field public static final enum QUICK_TAKE:Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;->NONE:Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;

    const-string v3, "QUICK_TAKE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;->QUICK_TAKE:Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;

    const-string v5, "BURST_SHOT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;->BURST_SHOT:Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;->$VALUES:[Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;->$VALUES:[Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter$ShutterPendingAction;

    return-object v0
.end method
