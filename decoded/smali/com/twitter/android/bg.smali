.class public final Lcom/twitter/android/bg;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:[Landroid/widget/BaseAdapter;

.field private final b:[I

.field private final c:Z

.field private final d:I


# direct methods
.method public constructor <init>([I[Landroid/widget/BaseAdapter;)V
    .locals 1

    const v0, 0x7f030024

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/bg;-><init>([I[Landroid/widget/BaseAdapter;I)V

    return-void
.end method

.method public constructor <init>([I[Landroid/widget/BaseAdapter;I)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/bg;->b:[I

    iput-object p2, p0, Lcom/twitter/android/bg;->a:[Landroid/widget/BaseAdapter;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/bg;->c:Z

    iput p3, p0, Lcom/twitter/android/bg;->d:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([Landroid/widget/BaseAdapter;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f030024

    invoke-direct {p0, v0, p1, v1}, Lcom/twitter/android/bg;-><init>([I[Landroid/widget/BaseAdapter;I)V

    return-void
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/android/bg;->c:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/bg;->a:[Landroid/widget/BaseAdapter;

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    add-int/2addr v3, v4

    iget-boolean v4, p0, Lcom/twitter/android/bg;->c:Z

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/twitter/android/bg;->a:[Landroid/widget/BaseAdapter;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, p1

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v5

    if-lez v5, :cond_3

    iget-boolean v6, p0, Lcom/twitter/android/bg;->c:Z

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    if-nez v3, :cond_0

    move-object v0, v7

    :goto_1
    return-object v0

    :cond_0
    if-ge v3, v5, :cond_2

    const/4 v0, 0x1

    sub-int v0, v3, v0

    invoke-virtual {v4, v0}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-ge v3, v5, :cond_2

    invoke-virtual {v4, v3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v4, v5

    sub-int/2addr v3, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move-object v0, v7

    goto :goto_1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/twitter/android/bg;->c:Z

    if-eqz v0, :cond_0

    move v0, v9

    :goto_0
    iget-object v1, p0, Lcom/twitter/android/bg;->a:[Landroid/widget/BaseAdapter;

    array-length v2, v1

    move v3, v0

    move v4, p1

    move v0, v8

    :goto_1
    if-ge v0, v2, :cond_5

    aget-object v5, v1, v0

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v6

    if-lez v6, :cond_4

    iget-boolean v7, p0, Lcom/twitter/android/bg;->c:Z

    if-eqz v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    if-nez v4, :cond_1

    move v0, v8

    :goto_2
    return v0

    :cond_0
    move v0, v8

    goto :goto_0

    :cond_1
    if-ge v4, v6, :cond_3

    sub-int v0, v4, v9

    invoke-virtual {v5, v0}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_2

    :cond_2
    if-ge v4, v6, :cond_3

    invoke-virtual {v5, v4}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_2

    :cond_3
    sub-int/2addr v4, v6

    :cond_4
    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-super {p0, v4}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_2
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/bg;->a:[Landroid/widget/BaseAdapter;

    array-length v2, v1

    move v3, v9

    move v4, v9

    move v5, p1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v6, v1, v3

    invoke-virtual {v6}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v7

    if-lez v7, :cond_3

    iget-boolean v8, p0, Lcom/twitter/android/bg;->c:Z

    if-eqz v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    if-nez v5, :cond_0

    if-nez p2, :cond_5

    iget v1, p0, Lcom/twitter/android/bg;->d:I

    invoke-virtual {v0, v1, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    iget-object v1, p0, Lcom/twitter/android/bg;->b:[I

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    array-length v2, v1

    rem-int v2, v4, v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    return-object v0

    :cond_0
    if-ge v5, v7, :cond_2

    const/4 v0, 0x1

    sub-int v0, v5, v0

    invoke-virtual {v6, v0, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_1
    if-ge v5, v7, :cond_2

    invoke-virtual {v6, v5, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_2
    move v6, v7

    sub-int/2addr v5, v6

    :cond_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move-object v0, p2

    goto :goto_2

    :cond_5
    move-object v0, p2

    goto :goto_1
.end method

.method public final getViewTypeCount()I
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/bg;->a:[Landroid/widget/BaseAdapter;

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/twitter/android/bg;->c:Z

    if-eqz v0, :cond_1

    add-int/lit8 v0, v3, 0x1

    :goto_1
    return v0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method public final isEnabled(I)Z
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/twitter/android/bg;->a:[Landroid/widget/BaseAdapter;

    array-length v1, v0

    move v2, v7

    move v3, p1

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v5

    if-lez v5, :cond_3

    iget-boolean v6, p0, Lcom/twitter/android/bg;->c:Z

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    if-nez v3, :cond_0

    move v0, v7

    :goto_1
    return v0

    :cond_0
    if-ge v3, v5, :cond_2

    const/4 v0, 0x1

    sub-int v0, v3, v0

    invoke-virtual {v4, v0}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_1

    :cond_1
    if-ge v3, v5, :cond_2

    invoke-virtual {v4, v3}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_1

    :cond_2
    move v4, v5

    sub-int/2addr v3, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-super {p0, v3}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_1
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/twitter/android/bg;->a:[Landroid/widget/BaseAdapter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/twitter/android/bg;->a:[Landroid/widget/BaseAdapter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
