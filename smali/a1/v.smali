.class public final La1/v;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# instance fields
.field public final a:Lcom/google/android/gms/common/api/internal/x;

.field public final b:I

.field public final c:Lz0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/e<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/x;ILz0/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/x;",
            "I",
            "Lz0/e<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/v;->a:Lcom/google/android/gms/common/api/internal/x;

    iput p2, p0, La1/v;->b:I

    iput-object p3, p0, La1/v;->c:Lz0/e;

    return-void
.end method
