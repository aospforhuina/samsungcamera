.class public final Lcom/samsung/android/camera/core2/util/CLog$Tag;
.super Ljava/lang/Object;
.source "CLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/util/CLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tag"
.end annotation


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/camera/core2/util/CLog;->a()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v4, "Tag(%s)\'s length(%d) is longer than limit(%d)."

    invoke-static {v0, v4, v2}, Lcom/samsung/android/camera/core2/util/CLog;->r(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/CLog$Tag;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/CLog$Tag;->a:Ljava/lang/String;

    return-object p0
.end method
