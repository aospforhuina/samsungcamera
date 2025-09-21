.class public final enum Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;
.super Ljava/lang/Enum;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimerMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

.field public static final enum TIMER_10S:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

.field public static final enum TIMER_2S:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

.field public static final enum TIMER_5S:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

.field public static final enum TIMER_INTERVAL:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

.field public static final enum TIMER_OFF:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

.field public static final enum TIMER_ONESHOT:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

.field public static final enum TIMER_WATCH:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;


# instance fields
.field private final mTimerDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    const-string v1, "TIMER_OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_OFF:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    const-string v3, "TIMER_2S"

    const/4 v4, 0x1

    const/16 v5, 0x7d0

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_2S:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    const-string v5, "TIMER_5S"

    const/4 v6, 0x2

    const/16 v7, 0x1388

    invoke-direct {v3, v5, v6, v7}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_5S:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    const-string v7, "TIMER_10S"

    const/4 v8, 0x3

    const/16 v9, 0x2710

    invoke-direct {v5, v7, v8, v9}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_10S:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    const-string v9, "TIMER_ONESHOT"

    const/4 v10, 0x4

    const/16 v11, 0x5dc

    invoke-direct {v7, v9, v10, v11}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_ONESHOT:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    .line 6
    new-instance v9, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    const-string v12, "TIMER_WATCH"

    const/4 v13, 0x5

    const/16 v14, 0xbb8

    invoke-direct {v9, v12, v13, v14}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_WATCH:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    .line 7
    new-instance v12, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    const-string v14, "TIMER_INTERVAL"

    const/4 v15, 0x6

    invoke-direct {v12, v14, v15, v11}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_INTERVAL:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    const/4 v11, 0x7

    new-array v11, v11, [Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v13

    aput-object v12, v11, v15

    .line 8
    sput-object v11, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;->$VALUES:[Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;->mTimerDuration:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;->$VALUES:[Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    return-object v0
.end method


# virtual methods
.method public getDuration()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;->mTimerDuration:I

    return p0
.end method
