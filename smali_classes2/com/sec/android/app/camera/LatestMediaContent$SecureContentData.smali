.class Lcom/sec/android/app/camera/LatestMediaContent$SecureContentData;
.super Ljava/lang/Object;
.source "LatestMediaContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/LatestMediaContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecureContentData"
.end annotation


# instance fields
.field mBurstGroupId:I

.field mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/LatestMediaContent$SecureContentData;->mUri:Landroid/net/Uri;

    .line 3
    iput p2, p0, Lcom/sec/android/app/camera/LatestMediaContent$SecureContentData;->mBurstGroupId:I

    return-void
.end method
