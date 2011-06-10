class CreateGeneSummaries < ActiveRecord::Migration
  def change
    create_table :gene_summaries do |t|
      t.integer :gene_id
      t.integer :has_ge,  :limit => 1
      t.integer :has_cnv, :limit => 1
      t.integer :has_snp, :limit => 1
      t.integer :has_kn,  :limit => 1
      t.integer :has_lit, :limit => 1
      t.integer :evidence_types_count,  :limit => 1
      t.integer :ge_count
      t.integer :cnv_count
      t.integer :snp_count
      t.integer :kn_count
      t.integer :lit_count
      t.integer :total_count
    end
  end
end