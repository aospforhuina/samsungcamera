.class final enum Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;
.super Ljava/lang/Enum;
.source "ProControlPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BackgroundState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

.field public static final enum DARK:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

.field public static final enum IDLE:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

.field public static final enum LIGHT:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;->IDLE:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    const-string v3, "LIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;->LIGHT:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    const-string v5, "DARK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;->DARK:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;->$VALUES:[Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;->$VALUES:[Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView$BackgroundState;

    return-object v0
.end method
