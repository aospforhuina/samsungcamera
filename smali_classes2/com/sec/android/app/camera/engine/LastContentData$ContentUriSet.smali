.class Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;
.super Ljava/lang/Object;
.source "LastContentData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/LastContentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentUriSet"
.end annotation


# instance fields
.field mContentMpUri:Landroid/net/Uri;

.field mContentSecMpUri:Landroid/net/Uri;

.field mRawContentMpUri:Landroid/net/Uri;

.field mRawContentSecMpUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;->mContentSecMpUri:Landroid/net/Uri;

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;->mRawContentSecMpUri:Landroid/net/Uri;

    .line 4
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;->mContentMpUri:Landroid/net/Uri;

    .line 5
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;->mRawContentMpUri:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/k5;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;->mContentSecMpUri:Landroid/net/Uri;

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;->mRawContentSecMpUri:Landroid/net/Uri;

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;->mContentMpUri:Landroid/net/Uri;

    .line 4
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/LastContentData$ContentUriSet;->mRawContentMpUri:Landroid/net/Uri;

    return-void
.end method
