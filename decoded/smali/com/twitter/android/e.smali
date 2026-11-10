.class public Lcom/twitter/android/e;
.super Ljava/lang/Object;


# instance fields
.field protected final a:I

.field protected final b:I

.field protected c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/e;->c:Ljava/lang/String;

    iput p2, p0, Lcom/twitter/android/e;->a:I

    iput p3, p0, Lcom/twitter/android/e;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/twitter/android/e;->a:I

    return v0
.end method
