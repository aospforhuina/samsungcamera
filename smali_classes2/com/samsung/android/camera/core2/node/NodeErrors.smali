.class public Lcom/samsung/android/camera/core2/node/NodeErrors;
.super Ljava/lang/Object;
.source "NodeErrors.java"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/system/OsConstants;->ENOMEM:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/camera/core2/node/NodeErrors;->a:I

    .line 2
    sget v0, Landroid/system/OsConstants;->ENOSYS:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/camera/core2/node/NodeErrors;->b:I

    .line 3
    sget v0, Landroid/system/OsConstants;->EINVAL:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/camera/core2/node/NodeErrors;->c:I

    .line 4
    sget v0, Landroid/system/OsConstants;->ENOENT:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/camera/core2/node/NodeErrors;->d:I

    .line 5
    sget v0, Landroid/system/OsConstants;->EPERM:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/camera/core2/node/NodeErrors;->e:I

    .line 6
    sget v0, Landroid/system/OsConstants;->ENODEV:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/camera/core2/node/NodeErrors;->f:I

    .line 7
    sget v0, Landroid/system/OsConstants;->EEXIST:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/camera/core2/node/NodeErrors;->g:I

    .line 8
    sget v0, Landroid/system/OsConstants;->EPIPE:I

    neg-int v1, v0

    sput v1, Lcom/samsung/android/camera/core2/node/NodeErrors;->h:I

    neg-int v0, v0

    .line 9
    sput v0, Lcom/samsung/android/camera/core2/node/NodeErrors;->i:I

    .line 10
    sget v0, Landroid/system/OsConstants;->EOVERFLOW:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/camera/core2/node/NodeErrors;->j:I

    .line 11
    sget v0, Landroid/system/OsConstants;->ENODATA:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/camera/core2/node/NodeErrors;->k:I

    .line 12
    sget v0, Landroid/system/OsConstants;->EAGAIN:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/camera/core2/node/NodeErrors;->l:I

    .line 13
    sget v0, Landroid/system/OsConstants;->ETIMEDOUT:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/camera/core2/node/NodeErrors;->m:I

    .line 14
    sget v0, Landroid/system/OsConstants;->EBADMSG:I

    neg-int v0, v0

    sput v0, Lcom/samsung/android/camera/core2/node/NodeErrors;->n:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
